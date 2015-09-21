# Symbol to Block
p %w(a b c).map(&:upcase) #=> ["A", "B", "C"]

# equivalent to
p %w(a b c).map { |char| char.upcase } #=> ["A", "B", "C"]
