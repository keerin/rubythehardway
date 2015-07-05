filename = ARGV.first

puts "We're going to erase #{filename}"
# CTRL-C interrupts the running of the program and nds it abruptly.
puts "If you don't want to do that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "opening the file..."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines"

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write "#{line1}\n#{line2}\n#{line3}\n"

puts "And finally, we close it."
target.close
