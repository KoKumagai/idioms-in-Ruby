obj = 'my object'

# Singleton Method
class << obj
  def say_ko
    puts 'Ko'
  end
end

# equivalent to
# def obj.say_ko
#   puts 'Ko'
# end

obj.say_ko #=> Ko
