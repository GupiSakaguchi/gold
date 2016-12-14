#eval(evalute)
eval "p self"
object = Object.new
object.instance_eval { p self }
object.class.class_eval { p self }
Kernel.module_eval { p self}

#動的にメソッドを定義
class AttrClass
  def initialize
    @attr = "attr"
  end
  
  def add_reader(instance_eval_name)
    eval <<-END_OF_DEF
      def #{instance_eval_name}
        @#{instance_eval_name}
      end
    END_OF_DEF
  end
  
  def add_weiter(instance_eval_name)
    eval <<-END_OF_DEF
      def #{instance_eval_name}=(val)
        @#{instance_eval_name} = val
      end
    END_OF_DEF
  end
end

attr_obj = AttrClass.new
p attr_obj.respond_to? "attr"
p attr_obj.add_reader "attr"
p attr_obj.respond_to? "attr"

attr_obj.add_weiter "gen"
attr_obj.respond_to? "gen"



