$:.unshift File.expand_path('../../lib', __FILE__)
require 'path_operator'

describe PathOperator do
  before { PathOperator.include! }
  
  it 'should join strings as paths' do
    ('a' / 'b').should == 'a/b'
  end
  
  it 'should transform strings and symbols to paths' do
    [:asdf, 'asdf', Pathname.new('asdf')].each do |s|
      s.to_path.should == Pathname.new(s.to_s)
    end
  end
end

