class Person
  attr_accessor :first_name, :last_name
end

def create_ko
  Person.new.tap do |ko|
    ko.first_name = 'Ko'
    ko.last_name = 'Kumagai'
  end
end

# equivalent to
#def create_ko
#  ko = Person.new
#  ko.first_name = 'Ko'
#  ko.last_name = 'Kumagai'
#  ko
#end

p create_ko #=> #<Person:0x007f845326b270 @first_name="Ko", @last_name="Kumagai">
