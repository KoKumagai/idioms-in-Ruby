class ContextProbe
  def initialize
    @a = 1
  end
end

obj = ContextProbe.new
obj.instance_eval do
  puts @a #=> 1
end

new_a_value = 2
obj.instance_eval { @a = new_a_value }
obj.instance_eval { puts @a } #=> 2

class ContextProbe
  def initialize
    @b = 1
    @c = 2
  end
end

ContextProbe.new.instance_exec(5) { |arg| puts @b + @c + arg } #=> 8
