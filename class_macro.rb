class ClassMacro
  def new_my_method
    puts 'This is a new method'
  end

  # Defining a class macro
  def self.deprecate(old_method, new_method)
    define_method(old_method) do |*args, &block|
      puts "Warning: #{old_method}() is deprecated! Use #{new_method}()."
      send(new_method, *args, &block)
    end
  end

  # Using a class macro
  deprecate :old_my_method, :new_my_method
end


class_macro = ClassMacro.new

class_macro.new_my_method
#=> This is a new method

class_macro.old_my_method
#=> Warning: old_my_method() is deprecated! Use new_my_method().
#=> This is a new method
