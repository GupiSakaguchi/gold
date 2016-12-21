p [1,2,3].inject([]){|x,y| x << y ** 2}

p (1...3).map{|x|x ** 2}.take(3).inject(0,&:+)

p [1,2,3].inject(2,:-)

f = Fiber.new{
  Fiber.yield "foo"
}
p f.resume

require "date"

date = Date.new(2016,1,1)
puts date << 1
puts date + 1
puts date >> 1

sum = 0
[1,2,3].each do |i| 
  sum = i
end

puts sum

a = 1.0 + 1
p a.class 
a = a + (1/2r)
p a.class
a = a + (1 + 2i)
p a.class

#メソッドの再定義
class A
  private
  def hoge
    puts "A"
  end
end

class B < A
  public :hoge
end
B.new.hoge
  
#array/next
a = Array.new(3,"a")
p a
a[0].next! #b
p a

#Thread.start/new/fork


#alias
def method
  puts "hello,world"
end

alias old_method method

def method
  old_method
  puts "hello,Ruby world"
end
method

#クラス変数/スーパークラス、サブクラス間で共有
class T
  @@x = 0
  class << self
    @@x = 1
    def x
      @@x
    end
  end
  def x
    @@x = 2
  end
end
puts T.x

class T2 < T
  @@x = 3
end

puts T.x

  
  
  