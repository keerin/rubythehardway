name = 'Zed A. Shaw'
age = 35 # not a lie in 2009
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'
inch_to_cent = height * 2.54
pound_to_kilo = weight * 0.453592

puts "Let's talk about #{name}."
puts "He's #{inch_to_cent} inches tall."
puts "He's #{pound_to_kilo} pounds heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes.downcase} eyes and #{hair.downcase} hair."
puts "His teeth are usually #{teeth.downcase} depending on the coffee."

# this line is tricky, try to get it exactly right
puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."
