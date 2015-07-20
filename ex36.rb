def inside_house
    puts "Creeping in the back door, you see the baby lying at the far side of the table, completely naked. There's even apples on the table! Your mouth starts to water and you have to stop yourself from drooling."
    puts "At the near end of the table, a freshly baked ham is cooling. There is a woman standing at the cooker with a fring pan, making eggs."
    puts "To grab the baby and make a run for it, type 'grab baby'."
    puts "If you want to play it safe and bring the King a cooked ham instead, type 'grab ham'."

    print "> "

    inside_choice = $stdin.gets.chomp
    $choices.push(inside_choice)

    if inside_choice.include? "grab baby"
        puts "Grabbing the baby from the table causes the little snot machine to scream. The woman spins round, screams and smashes you with her frying pan. You collapses to the ground, and see the remaining Kobold running out the door with the ham."
        dead ("Darkness comes over you. The last sound you hear is the cocking of a shotgun...")
    elsif inside_choice.include? "grab ham"
        puts "You push the Kobold into the woman who spins round, screams and smashes him with her frying pan. He collapses to the ground.\n"
        dead("You run as fast as your little legs can carry you with the ham, through the field, past the river, through the cave and back to King Kobold.\n The King asked you for a baby, and you brought him a ham. You think he can't tell the difference between a baby and a ham?\nAs his guards grab you, the last thing you feel is the spit being shoved up your arse. It comes out your mouth and you are laid over the fire. The King laughs all night, while eating his delicious ham.")
    else
        inside_house
    end
end

def outside_house
    puts "You made it! You are finally at the farm house. You both pick up shovels (trowels) for weapons."
    puts "Would you like to run straight into the front door?"
    puts "Maybe you fancy looking in the window to scope things out?"
    puts "If you want to jump on the shoulders of the last remaining Kobold to look in the window, type 'window'"
    puts "If you want to be a little more forthright and run straight in the front door, shovels above your head then type 'front door'"

    print "> "

    outside_choice = $stdin.gets.chomp
    $choices.push(outside_choice)

    if outside_choice.include? "window"
        puts "Looking in the window you see the farmer sitting in a rocking chair, cleaning his shotgun. Phew! Luckily you didn't barge in the front door like an idiot!\nYou can also see through the window that there is a baby lying on the kitchen table! Nearly there!"
        inside_house
    elsif outside_choice.include? "front door"
        dead("You kick the door open and scream YAAAAARRRRGHHHH\n Not because you are trying to be scary, but because the farmer is sitting behind the door with his shotgun and blasts you both with one shot.")
    else
        outside_house
    end

end

def field
    puts "Crossing the field is the last obstacle to the house, and there is nothing here but the hot sun above, grass in front of you and a few cows on the way."
    puts "The thought of sneaking under on of the cows, squeezing a teat and enjoying some milk is very tempting."
    puts "Type 'ignore' if you can't resist the temptation and want to keep heading towards the farm house."
    puts "If the thought of having some milk is just too tempting, type 'milk'."

    print "> "
    
    field_choice = $stdin.gets.chomp
    $choices.push(field_choice)

    if field_choice.include? "ignore"
        puts "You decide not to grab some milk from the cow and wander off across the field. One of the remaining Kobolds decides that he wants some instead. The cow has other plans and sits on him!"
        outside_house
    elsif field_choice.include? "milk"
        dead ("You creep up on the cow and it doesn't bat an eyelid. You grab one of the teats and squeeze. You can almost taste the milk on your tongue when... SPLAT. The cow has other plans and sits on you, killing you instantly. Idiot.")
    else
        field
    end
        
end

def surface
    puts "Pulling yourself up, you realise you are at the far end of the farm.\n"
    puts "The river beside you would be the quickest path to the farmhouse, but Kobolds are not really a fan of water...\n"
    puts "You could always walk the distance to the farm across the fields. It will probably take a lot longer, but at least you won't get wet."
    puts "Type 'river' to jump in the water and swim to the farmhouse."
    puts "Type 'field' to trek across the fields instead.\n"

    print "> "

    surface_choice = $stdin.gets.chomp
    $choices.push(surface_choice)

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
    $choices.push(cave_choice)

    if cave_choice.include? "jump"
        cave_jump
    elsif cave_choice.include? "dive"
        cave_dive
    else cave_right
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
    $choices.push(cave_direction)

    if cave_direction.include? "left"
        cave_left
    elsif cave_direction.include? "right"
        cave_right
    else
        cave
    end
end

def dead(why)
    puts why, "Game Over.\n\nYour choices were:"
    $choices.each { |c| print "#{c}\n" }
    exit(0)
end

def start
    puts "You are a Kobold, lowliest of all the creatures in the forest. A Kobold's life is short, cruel and unimportant. The only way to make life a little less short and cruel, and to gain some semblance of important in your life is to do exactly what the King says, make yourself extremely useful to the King, and basically do all you can to not piss off the King!\n"
    puts "Like all Kobolds, your greatest hope in life was to be chosen to represent all Kobolds by the King to venture across the vast expanse (or \"farm\" as the Humans call it), source a tasty treat of the King's choosing, and bring it back for his birthday feast. That is, until you were actually chosen! Now, your greatest hope in life is to make it back without being killed, and then to survive long enough to taste the fruits of your success. After all, Kobold banquets can be pretty brutal affairs...\n"
    puts "The King has decreed that for his fourth birthday of the year, he would like four brave Kobolds to venture forth and take a baby from the nearby Appleby Farm, to prepare for the banquet later that day. Coming up short in terms of finding brave Kobolds, he has randomly selected you, and three others standing in your vicinity, and orders you to leave immediatly. Do you want to go on a baby-stealing adventure which will almost certainly kill you in gruesome fashion?\n"
    puts "Type either 'yes' or 'no'"

    print "> "
    choice = $stdin.gets.chomp
    $choices.push(choice)

    if choice == "yes"
        cave
    elsif choice == "no"
        dead("For some reason you didn't see the crossbow in the King's hands. With the biggest, toothiest smile you've ever seen, the King fires his crossbow and takes your little stupid head clean off your shoulders. You don't refuse an order from the King and live...\n")
    else dead("If you can't simply type yes or no, this game is probably not for you...")
    end
end

$choices = Array.new

start
