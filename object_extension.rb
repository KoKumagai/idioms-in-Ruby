# class ClassExtension; end
obj = Object.new

module MyModule
  def my_method
    puts 'This is a my method'
  end
end

# objct extension
obj.extend MyModule

# equivalent to
# class << obj
#   include MyModule
# end

obj.my_method #=> This is a my method
