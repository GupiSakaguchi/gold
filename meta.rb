external_scope = 1
NewDefineClass = Class.new do
  puts external_scope
end

#open class 
class String
  def quote
    "'#{self}'"
  end
end

str = "hello"
p str
p str.quote


#class Numeric
class Numeric
  def steps
    return [] if self <= 0
    
    0.upto(self).to_a
  end
end

p 10.steps

#method_missing
def method_missing(name,*args)
  @array.__send__ name,*args
end

class DelegateArray
  def initialize
    @array = []
  end
end

darray = DelegateArray.new
p darray << 1








