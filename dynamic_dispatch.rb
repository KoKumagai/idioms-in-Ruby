class MyClass
  def public_method(name)
    puts "Hello #{name}, This is a public_method"
  end

  private
  def private_method(name)
    puts "Hello #{name}, This is a private_method"
  end
end

myclass = MyClass.new

# dynamic dispatch
myclass.send(:public_method, 'Ko') #=> Hello Ko, This is a public_method
myclass.send(:private_method, 'Ko') #=> Hello Ko, This is a private_method

# equivalent to
myclass.public_method('Ko') #=> Hello Ko, This is a public_method
myclass.private_method('Ko') #=> private method `private_method' called for #<MyClass:0x007fbab30827d8> (NoMethodError)
