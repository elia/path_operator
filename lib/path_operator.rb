require 'path_operator/version'

module PathOperator
  module Stringish
    def / *others
      File.join self, *others.map(&:to_s)
    end

    def to_path
      Pathname.new(self.to_s)
    end
  end
  
  module Pathname
    def / *others
      join *others.map(&:to_s)
    end

    def from other_path
      self.relative_path_from( other_path.to_path )
    end

    def absolute
      "/#{self}".to_path
    end

    def to_path
      self
    end
  end
  
  def self.include!
    ::String.send :include, PathOperator::Stringish
    ::Symbol.send :include, PathOperator::Stringish
    
    require 'pathname'
    ::Pathname.send :include, PathOperator::Pathname
  end
end
