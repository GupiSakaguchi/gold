#protected
class C
  def call_hoge
    self.hoge
  end
  
  def call_piyo
    piyo
    #self.piyo error
  end
  
  protected
  def hoge
    puts "hoge"
  end
  
  private 
  def piyo
    puts "piyo"
  end
end

class D < C
  def hogehoge
    self.hoge
    self.hoge
  end
end

c = C.new 
c.call_hoge
c.call_piyo
#c.hoge

d = D.new 
d.hogehoge

module Gc
  def gen
    puts "a"
  end
end
  
class G
  def gen 
    puts "b"
  end
  #include Gca
  prepend Gc
end 
p G.ancestors
g = G.new
g.gen

class C
  puts "gengen"
end