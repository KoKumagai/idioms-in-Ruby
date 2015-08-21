a = 1
defined? a      #=> local-variable

class MyClass   # Scope gate : entering class
  b = 1
  defined? a    #=> nil
  defined? b    #=> local-variable

  def my_method # Scope gate : entering def
    c = 1
    defined? a  #=> nil
    defined? b  #=> nil
    defined? c  #=> local-variable
  end           # Scope gate : leaving def
end             # Scope gate : leaving class

module MyModule # Scope gate : entering module
  d = 1
  defined? a    #=> nil
  defined? b    #=> nil
  defined? c    #=> nil
  defined? d    #=> local-variable
end             # Scope gate : leaving module

defined? a      #=> local-variable
defined? b      #=> nil
defined? c      #=> nil
defined? d      #=> nil
