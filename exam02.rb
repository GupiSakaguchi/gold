#using 
class C
  def hoge
    puts "A"
  end
end

module M
  refine C do
    def hoge
      puts "B"
    end
  end
end

c = C.new
c.hoge
using M
c.hoge

#private
#privateメソッドは呼び出す際にレシーバを指定できない
#サブクラスからなら、スーパークラスのメソッドはレシーバを指定せずに呼び出せる
#スーパークラスのprivateメソッドはサブクラスからも呼び出すことが出来る
class Example
  def hoge
    self.piyo
  end
  
#private
protected
  def piyo
    puts "piyo"
  end
end
Example.new.hoge

