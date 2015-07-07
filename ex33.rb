def while_loop
    
    puts "Which number do you want to finish on?"
    print "> "
    finish = $stdin.gets.chomp.to_i
    
    puts "Thank you. Now, how much do you want to increment by?"
    print "> "

    increment = $stdin.gets.chomp.to_i
    i = 0
    numbers = []

    while i <= finish
        puts "At the top, i is #{i}"
        numbers.push(i)

        i += increment
        puts "Numbers now: ", numbers
        puts "At the bottom, i is #{i}"
    end

    puts "The numbers: "

    # remember you can write this two other ways?
    numbers.each {|num| puts num }
end

while_loop
