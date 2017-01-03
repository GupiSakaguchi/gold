module M1
  MM = "MM"
end

class C1
  MSG = "MSG"
  include M1
  class C2
    MSG2 = "MSG2"
    def a
      p MSG
      p MSG2
      p C1::MM
    end
  end
  p MM
  #p MSG2 => error
end
c2 = C1::C2.new
c2.a