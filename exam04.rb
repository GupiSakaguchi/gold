#freeze
array = [1, 2, 3].freeze
#array = [1,2]
p array.object_id
array += [4, 5]
#array = array + [4,5]
#array << [4,5] #=> error
p array.object_id #別ID

module M
  CO = "M"
end
p ::M::CO

class Foo
 def foo
  "foo"
 end
end

class Bar < Foo
 def foo
  super + "bar"
 end
 #undef foo
 alias bar foo
 #undef foo
end
puts Bar.new.bar