
def method_missing(meth, *args, &blk)
  
end

class Hoge
  
end

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





