
def method_missing(meth, *args, &blk)
  
end

class Hoge
  
end

external_scope = 1
NewDefineClass = Class.new do
  puts external_scope
end