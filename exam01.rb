x,*y = *[0,1,2]
p x,y

p 4/5
p 4.0/5
p 4/5r
p 4/5.0

class Err1 < StandardError
end
class Err2 < Err1
end

begin
raise Err2
rescue => e
  puts "st"
rescue Err2 => ex
  puts ex.class 
end    

def hoge(*args)
  p *args
  p args[0]
end

hoge [1,2,3]

def hogehoge(a: 1,b: 2,**z)
  p a
  p b
  p z
end

hogehoge a: 1,b: 2
hogehoge z: 100

#lambda
hi = -> (x){puts "hello #{x}"}
hi.call("gen")

#catch/thorow
a,b = catch :exit do
  for x in 1..10
    for y in 1..10
      throw :exit ,[x,y] if x + y == 10
    end
  end
end
puts a,b

def greet
  puts 'hello'
  throw :symbol
end

catch(:symbol) do
  greet
  puts 'bye'
end
