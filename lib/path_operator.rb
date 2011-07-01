require 'pathname'
require 'path_operator/version'

module PathOperator
  module Stringish
    def / *others
      File.join self.to_s, *others.map(&:to_s)
    end

    def as_path
      Pathname.new(self.to_s)
    end
  end
  
  module Pathnameish
    def / *others
      join *others.map(&:to_s)
    end

    def from other_path
      self.relative_path_from( other_path.to_path )
    end
    
    def absolute
      "/#{self}".to_path
    end
    
    def as_path
      self
    end
  end
  
  def self.load!
    ::String.send   :include, PathOperator::Stringish
    ::Pathname.send :include, PathOperator::Pathnameish
  end
end
