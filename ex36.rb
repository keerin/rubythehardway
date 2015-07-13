# Placeholder so this is not an empty file. The instructions for this exercise are here - http://learnrubythehardway.org/book/ex36.html

def cave
    puts "This is the cave function."
end

def dead(why)
    puts why, "Game Over."
    exit(0)
end

def start
    puts "You are a Kobold, lowliest of all the creatures in the forest. A Kobold's life is short, cruel and unimportant. The only way to make life a little less short and cruel, and to gain some semblance of important in your life is to do exactly what the King says, make yourself extremely useful to the King, and basically do all you can to not piss off the King!"
    puts "Like all Kobolds, your greatest hope in life was to be chosen to represent all Kobolds by the King to venture across the vast expanse (or \"farm\" as the Humans call it), source a tasty treat of the King's choosing, and bring it back for his birthday feast. That is, until you were actually chosen! Now, your greatest hope in life is to make it back without being killed, and then to survive long enough to taste the fruits of your success. After all, Kobold banquets can be pretty brutal affairs..."
    puts "The King has decreed that for his fourth birthday of the year, he would like four brave Kobolds to venture forth and take a baby from the nearby Appleby Farm, to prepare for the banquet later that day. Coming up short in terms of finding brave Kobolds, he has randomly selected you, and three others standing in your vicinity, and orders you to leave immediatly. Do you want to go on a baby-stealing adventure which will almost certainly kill you in gruesome fashion?"
    puts "Type either 'yes' or 'no'"

    print "> "
    choice = $stdin.gets.chomp

    if choice == "yes"
        cave
    elsif choice == "no"
        dead("For some reason you didn't see the crossbow in the King's hands. With the biggest, toothiest smile you've ever seen, the King fires his crossbow and takes your little stupid head clean off your shoulders. You don't refuse an order from the King and live...")
    else dead("If you can't simply type yes or no, this gave is probably not for you...")
    end
end

start
