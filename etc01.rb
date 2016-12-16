#dup/clone
a = %w(a b c)
p a
b = a.dup
p b.reverse!
p a

#異なるID
p a.object_id
p b.object_id

#元クラスも上書きされる（同じ参照）
c = %w(1 2 3)
p c 
d = c
p c.reverse!
p d

#同じID
p c.object_id
p d.object_id
