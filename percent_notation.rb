name = 'Ko'

# %, %Q
p %(Matz DHH #{name}) #=> "Matz DHH Ko"
p %Q(Matz DHH #{name}) #=> "Matz DHH Ko"
# equivalent to
p "Matz DHH #{name}" #=> "Matz DHH Ko"


# %q
p %q(Matz DHH #{name}) #=> "Matz DHH \#{name}"
# equivalent to
p 'Matz DHH #{name}' #=> "Matz DHH \#{name}"


# %W
p %W(Matz DHH #{name}) #=> ["Matz", "DHH", "Ko"]
# equivalent to
p ["Matz", "DHH", "#{name}"] #=> ["Matz", "DHH", "Ko"]


# %w
p %w(Matz DHH #{name}) #=> ["Matz", "DHH", "\#{name}"]
# equivalent to
p ['Matz', 'DHH', '#{name}'] #=> ["Matz", "DHH", "\#{name}"]


# %I
p %I(Matz DHH #{name}) #=> [:Matz, :DHH, :Ko]
# equivalent to
p [:Matz, :DHH, :"#{name}"] #=> [:Matz, :DHH, :Ko]


# %i
p %i(Matz DHH #{name}) #=> [:Matz, :DHH, :"\#{name}"]
# equivalent to
p [:Matz, :DHH, :'#{name}'] #=> [:Matz, :DHH, :"\#{name}"]


# %x
p %x(date) #=> "Tue 29 Sep 2015 23:57:08 PDT\n"
# equivalent to
p `date` #=> "Tue 29 Sep 2015 23:57:08 PDT\n"


# %s
p %s(Ko) #=> :Ko
p %s(#{name}) #=> :"\#{name}"
# equivalent to
p :Ko #=> :Ko
p :'#{name}' #=> :"\#{name}"


# %r
p %r(^http://www.kokumagai.com/) #=> /^http:\/\/www.kokumagai.com\//
# equivalent to
p /^http:\/\/www.kokumagai.com\// #=> /^http:\/\/www.kokumagai.com\//
