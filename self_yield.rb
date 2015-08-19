class Person
  attr_accessor :first_name, :last_name

  def initialize
    yield self if block_given?
  end
end

ko = Person.new do |p|
  p.first_name = 'Ko'
  p.last_name = 'Kumagai'
end

p ko #=> #<Person:0x007fda311673e0 @first_name="Ko", @last_name="Kumagai">
