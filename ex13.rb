first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

puts "would you like to add more text?"
answer = $stdin.gets.chomp()
puts "So, you said #{answer}?"

# I have used $stdin, and not ARGV. This is advised here - http://rorwebprogramming.blogspot.co.uk/2014/08/argv-and-getschomp.html - I used this because ARGV.gets.chomp doesnt work. The asnswr to why this works is in here in the comment by rampion - https://www.reddit.com/r/ruby/comments/2b9xvl/stdin_and_argv/
