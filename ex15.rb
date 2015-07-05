# This line sets a variable 'filename' as the result of the argument passed to ARGV when running the script.
filename = ARGV.first

# set variable 'txt' the opened 'filename', which was set previously as the file passed as an argument when opening the script.
txt = open(filename)

# This line puts some text on the next line and calls the name of the file entered as an argument by calling 'filename'.
puts "Here's your file #{filename}:"

# Here we print out the contents of the file by calling the 'txt' variable and passing it the 'read' function.
print txt.read

# This just does the same as line 8 essentially.
print "Type the filename again: "

# The file_again variable is set to contain whatever the user types in and gets.chomp prompts the user to enter text, and cuts off any whitespace etc.
file_again = $stdin.gets.chomp

# txt_again variable is set to do the same as line 5.
txt_again = open(file_again)

# this line prints out the contents of the 'txt_again' by calling the 'read' method on it.
print txt_again.read

# The two lines below close each text file opened in order to avoid memory leakage.
txt.close()
txt_again.close()
