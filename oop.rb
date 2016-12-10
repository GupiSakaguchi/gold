
#instancemethod,classmethod
class Greeting
  def hello
    puts "hello"
  end
  
  def self.helloplus
    puts "hello hello"
  end
  
end

Greeting.helloplus

greet = Greeting.new
greet.hello

#inheritance
class Parent
  def greet
    puts "hi"
  end
end

class Child < Parent
  
end

p Child.superclass
child = Child.new
child.greet













