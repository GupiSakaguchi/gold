module M
  def a(a)
    puts a
  end
  
  def self.s
    puts "s M1"
  end
end

module M1
  prepend M
end

module M2
  def a
    puts "a M2"
  end
end

module M3
  def a(a)
    super
    puts a + " M3"
  end
end

module M4
  class << self
    def ss
      puts "s M4"
    end
  end
  
  def b
    puts "s b"
  end
end

class A
  include M1
end

class B < A
end

class C < B
  include M2
  prepend M3
  class << self
    include M4
  end
  
  def a(a)
    puts a + "C"
  end
end

class D
  extend M4
end

p C.ancestors
# => [C, M2, B, A, M, M1, Object, Kernel, BasicObject]

c = C.new
c.a("hello")
C.b
M4.ss
D.b


