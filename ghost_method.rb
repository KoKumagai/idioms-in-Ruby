class Ghost
  def method_missing(name, *args, &block)
    result = "You called => #{name}(#{args.join(',')})"
    result +=  "{ #{block.call} }" if block_given?
    result
  end
end

ghost = Ghost.new
puts ghost.ghost_method
#=> You called => ghost_method()
puts ghost.ghost_method_with_arguments('a', 1)
#=> You called => ghost_method_with_arguments(a,1)
puts ghost.ghost_method_with_block('a', 1) { 'This is a block' }
#=> You called => ghost_method_with_block(a,1){ This is a block }
