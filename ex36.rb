# The instructions for this exercise are here - http://learnrubythehardway.org/book/ex36.html

def field
    puts "This is the field."
end

def surface
    puts "Pulling yourself up, you realise you are at the far end of the farm.\n"
    puts "The river beside you would be the quickest path to the farmhouse, but Kobolds are not really a fan of water...\n"
    puts "You could always walk the distance to the farm across the fields. It will probably take a lot longer, but at least you won't get wet."
    puts "Type 'river' to jump in the water and swim to the farmhouse."
    puts "Type 'field' to trek across the fields instead.\n"

    print "> "

    surface_choice = $stdin.gets.chomp

    if surface_choice.include? "river"
        dead("The other Kobolds hesitantly approach the water with you leading. As you prepare to dip your toes in, you feel a shove in your back and end up in the water! The reason Kobolds hate water is because they can't swim! Enjoy drowning.\n")
    elsif surface_choice.include? "field"
        field
    else
        surface
    end
end

def cave_jump
    dead("Jumping as high as you can, you attempt to clear the rock. You can't jump very high. Kobolds have incredibly small and weak legs. You face plant into the rocks, which then roll over your stupid body.\n")
end

def cave_dive
    puts "You dive to safety, pushing one of your fellow Kobolds in the path of the falling rocks! Ah well, better him than you. There is a light above you. Climbing a little, you pop your head above ground. Applebee Farm!\n"
    surface
end

def cave_right
    puts "Rocks are falling! What will you do?\n"
    puts "Will you dive through the crowded Kobolds beside you to safety? If so, type 'dive'.\n"
    puts "You could always try to do some Indiana Jones shit and jump over the rocks hutling towards you? If you want to try this, type 'jump'.\n"

    print "> "
    cave_choice = $stdin.gets.chomp

    if cave_choice.include? "jump"
        cave_jump
    elsif cave_choice.include? "dive"
        cave_dive
    else 
        cave_right
    end
end

def cave_left
    puts "BATS!\n\nYou've walked straight into what seems like a cloud made entirely of bats!\n"
    puts "You can hardly see through the hundreds of bats fkying all around you, and there is no sound except the flapping of their wings and high-ptched screech.\n"
    puts "While you flail your arms wildly to get the bats out of your face, the other Kobolds are doing the same.\n"
    puts "SMACK\n\n You are punched in the face by a flailing Kobold and are instantly knocked out. The Kobolds around you are completely oblivious to this and accidentally kick you in the face repeatedly, until you die.\n"
    dead("Kobolds are cruel and stupid, but it takes a special Kobold to be both at the same time. Unforunately you ended up with three cruel and stupid Kobolds, and wound up dead.\n")
end

def cave
    puts "Entering the tunnels which lead towards the farm, you and the others are in high spirits. As you were picked first by the King, the other Kobolds have made your their defacto leader. Your choices will decide wether your mission is sucessful, or if you will lead everyone to their deaths.\n"
    puts "After half an hour of walking and excited chatter, you come to a fork in the cave. To the left, the sound of wind can be heard past the short and narrow entrance. To the right, no sounds can be heard, but the entrance seems wider and taller. Both are completely pitch black. Luckily, Kobolds can pretty much see in the dark.\n"
    puts "Type 'left' to take that tunnel, and 'right' to take the other."

    print "> "

    cave_direction = $stdin.gets.chomp

    if cave_direction.include? "left"
        cave_left
    elsif cave_direction.include? "right"
        cave_right
    else
        cave
    end
end

def dead(why)
    puts why, "Game Over."
    exit(0)
end

def start
    puts "You are a Kobold, lowliest of all the creatures in the forest. A Kobold's life is short, cruel and unimportant. The only way to make life a little less short and cruel, and to gain some semblance of important in your life is to do exactly what the King says, make yourself extremely useful to the King, and basically do all you can to not piss off the King!\n"
    puts "Like all Kobolds, your greatest hope in life was to be chosen to represent all Kobolds by the King to venture across the vast expanse (or \"farm\" as the Humans call it), source a tasty treat of the King's choosing, and bring it back for his birthday feast. That is, until you were actually chosen! Now, your greatest hope in life is to make it back without being killed, and then to survive long enough to taste the fruits of your success. After all, Kobold banquets can be pretty brutal affairs...\n"
    puts "The King has decreed that for his fourth birthday of the year, he would like four brave Kobolds to venture forth and take a baby from the nearby Appleby Farm, to prepare for the banquet later that day. Coming up short in terms of finding brave Kobolds, he has randomly selected you, and three others standing in your vicinity, and orders you to leave immediatly. Do you want to go on a baby-stealing adventure which will almost certainly kill you in gruesome fashion?\n"
    puts "Type either 'yes' or 'no'"

    print "> "
    choice = $stdin.gets.chomp

    if choice == "yes"
        cave
    elsif choice == "no"
        dead("For some reason you didn't see the crossbow in the King's hands. With the biggest, toothiest smile you've ever seen, the King fires his crossbow and takes your little stupid head clean off your shoulders. You don't refuse an order from the King and live...\n")
    else dead("If you can't simply type yes or no, this game is probably not for you...")
    end
end

start
