class String
  alias :original_upcase :upcase

  def upcase
    "Upcase #{original_upcase}"
  end
end

puts 'abc'.upcase
#=> Upcase ABC
