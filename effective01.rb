class Person
  def initialize(s)
    @v = s
  end
  
  def name
    puts @v
  end
end

module Greet
  def greet(s)
    puts s
  end 
end

class Customer < Person
  include Greet
  
  def name 
    super
    puts @v + "gen"
  end
end
 
customor = Customer.new("gen")
# def customor.singel
#   p "singleton"
# end
#p customor.singleton_methods
#puts customor.class.singleton_class.ancestors
puts customor.name

p Customer.ancestors



