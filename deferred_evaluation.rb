class DeferredEvaluation
  def store(&block)
    @block = block
  end

  def execute
    @block.call
  end
end

obj = DeferredEvaluation.new
obj.store { $global = 1 }

$global = 0

obj.execute
puts $global #=> 1
