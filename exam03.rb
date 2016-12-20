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