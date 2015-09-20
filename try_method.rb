require 'active_support/all'

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

ko = User.new('Ko')
unknown = nil

# With try method
p ko.try(:name) #=> "Ko"
p unknown.try(:name) #=> nil

# Without try method
# p ko.name if ko
# p unknown.name if unknown
