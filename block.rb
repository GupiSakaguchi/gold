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