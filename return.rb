#return
class A
  def hoge
    a = [1,2,3]
    a.each do |x|
      #return p x * 2 
      break p x * 2
      #p x * 2
    end
    p "end"
  end
end 

a = A.new
a.hoge