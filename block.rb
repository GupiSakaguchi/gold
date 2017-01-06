p (0..4).to_a.map{|i| i * 2}

def func x
  x + yield
end

pro = proc {3}
pro.call

y = 2
p func(1,&pro)

lmd = ->(x) {3}
#lmd.call

#脱出
def foo
  f = Proc.new { return :foo }
  f.call
  return
end

def bar
  f = lambda { return :bar }
  f.call
  return
end

def h
  yield
end

def hoge
  h{ return :hoge }
  nil
end

p foo()  #=> :foo
p bar()  #=> nil
p hoge() #=> :hoge