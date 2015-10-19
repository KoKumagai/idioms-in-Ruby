# using method
%w(a b c).each(&method(:puts)) #=> a b c

# equivalent to
%w(a b c).each{|c| puts c } #=> a b c
