# Mimic Method
def BaseClass(obj)
  obj.class
end

# BaseClass method looks like a class
class SubClass1 < BaseClass 'string'; end

puts SubClass1.superclass #=> String


class SubClass2 < BaseClass 1; end

puts SubClass2.superclass #=> Fixnum
