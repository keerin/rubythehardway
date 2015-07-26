# To do:
# 1. Comment in an explanation of how the engine class works in english
# 2. Comment in an explanation of how the map class works in english

class Scene
    def enter()
        puts "Here is some text on how to make a scene."
        exit(1)
    end
end

class Engine

    def initialize(scene_map)
        @scene_map = scene_map
    end

    def play()
        current_scene = @scene_map.opening_scene()
        last_scene = @scene_map.next_scene('finished')

        while current_scene != last_scene
            next_scene_name = current_scene.enter()
            current_scene = @scene_map.next_scene(next_scene_name)
        end

        current_scene.enter()
    end
end

class Death < Scene

        @@quips = [
                "Funny line about dying 1",
                "Funny line about dying 2",
                "Funny line about dying 3",
                "Funny line about dying 4"
        ]
# why use class method @@ instead of instance method @ ?
    
    def enter()
        puts @@quips[rand(0..(@@quips.length - 1))]
        exit(1)
    end
end

class CentralCorridor < Scene
    def enter()
        puts "A wild Gothon appears!"
        puts "You have a few options here, shoot, dodge or joke."
        print "> "

        action = $stdin.gets.chomp

        if action == "shoot"
            puts "He is faster on the draw than you are, because he has four arms. You die."
            return 'death'

        elsif action == "dodge"
            puts "You try to squeeze past him by using the skills you oicked up by watching Argentinean tango competitions on disc."
            puts "Perhaps the Gothon has been watching the same discs, or perhaps he is just much faster and more agile than you. Either way, he is a better dancer than you and kills you."
            return 'death'

        elsif action == "joke"
            puts "Turning the corner and seeing a Gothon in your way is a little bit of a surprise."
            puts "You react to this surprise the same way you reacted to the surprise of your parents divorcing... by telling a joke!"
            puts "'What's black and red, and faces the floor?' you ask the Gothon."
            puts "WHACK\n'You, bitch!' you yell ceremoniously. Telling jokes and sucker punching the other person is a speciality you learned from a school bully years ago."
            return 'laser_weapon_armory'

        else
            puts "DOES NOT COMPUTE!"
            return 'central_corridor'
        end
    end
end

class LaserWeaponArmory < Scene

    def enter()
        puts "There is some story in here."
        code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
        puts "You have to guess the code. It is a three digit code, and you will get ten attempts."
        print "[keypad] > "
        print code

        choice = $stdin.gets.chomp
        guesses = 0

        while choice != code && guesses <= 10
            puts "BZZZT"
            puts "That's the wrong code."
            guesses += 1
            print "[keypad] > "
            choice = $stdin.gets.chomp
        end

        if choice == code
            puts "click"
            puts "The door opens and you pass through."
            return 'the_bridge'

        else
            puts "You completely forgot that the security feature for too many incorrect entries was a complete removeal of all oxygen in the area. Who thinks this stuff up?"
            return 'death'
        end
    end
end

class TheBridge < Scene

    def enter()
        puts "this is another battle scene. Choose a or b."
        choice = $stdin.gets.chomp

        if choice == "a"
            puts "You die!"
            return 'death'

        elsif choice == "b"
            puts "You live!"
            return 'escape_pod'
        else
            puts "DOES NOT COMPUTE!"
            return 'the_bridge'
        end
    end
end

class EscapePod < Scene

    def enter()
        puts "you have to guess the correct escape pod"
        correct_pod = rand(1..3)
        print "> "
        guess = $stdin.gets.chomp.to_i

        if guess == correct_pod
            puts "You win!"
            return 'finished'
        else
            puts "You picked the wrong one, and now you are dead."
            return 'death'
        end
    end
end

class Finished < Scene
    def enter()
        puts "You won! Well done."
    end
end

class Map

    @@scenes = {
            'central_corridor' => CentralCorridor.new(),
            'laser_weapon_armory' => LaserWeaponArmory.new(),
            'the_bridge' => TheBridge.new(),
            'escape_pod' => EscapePod.new(),
            'death' => Death.new(),
            'finished' => Finished.new()
    }

    def initialize(start_scene)
        @start_scene = start_scene
    end
    
    def next_scene(scene_name)
        val = @@scenes[scene_name]
        return val
    end

    def opening_scene()
        return next_scene(@start_scene)
    end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
