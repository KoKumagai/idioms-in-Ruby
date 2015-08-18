class ClassExtension; end

module MyModule
  def my_method
    puts 'This is a my method'
  end
end

# class extension
class << ClassExtension
  include MyModule
end

# equivalent to
# class ClassExtension
#  extend MyModule
# end

ClassExtension.my_method #=> This is a my method
