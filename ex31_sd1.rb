puts "You enter a dark room with three doors. Do you go through door #1, door #2 or door #3?"

print "> "
door = $stdin.gets.chomp

if door == "1"
    puts "There's a giant bear here eatings a chess cake. What do you do?"
    puts "1. Take the cake."
    puts "2. Scream at the bear."

    print "> "
    bear = $stdin.gets.chomp

    if bear == "1"
        puts "The bear eats your face off. Good job!"
    elsif bear == "2"
        puts "The bear eats your legs off. Good job!"
    else
        puts "Well, doing %s is probably better. Bear runs away." % bear
    end

elsif door == "2"
    puts "You stare into the endless abyss at Cthulu's retina."
    puts "1. Blueberries."
    puts "2. Yellow jacket clothespins."
    puts "3. Understanding revolvers yelling melodies."

    print "> "
    insanity = $stdin.gets.chomp

    if insanity == "1" || insanity == "2"
        puts "Your body survives powered by a mind of jello. Good job!"
    else
        puts "The insanity rots your eyes into a pool of muck. Good job!"
    end

elsif door == "3"
    puts "Your find a garden with a real Unicorn."
    puts "1.You take a photo to keep a proof that Unicorns really exist."
    puts "2.You sneeky aproach it."
    puts "3.Third choice"

    print "> "
    unicorn = $stdin.gets.chomp
    if unicorn == "1"
        puts "Unicorn hate the flash of your camera. It shot you with is laser eyes and you combust. Good job!"
    elsif unicorn == "2"
        puts "You accidentaly hurt a pot, the scared unicorn reflex combust you with his laser eyes. Good job!"
    elsif unicorn == "3"
        puts "That choice is better. Good job!"
    end
else
    puts "You stumble around and fall on a knife and die. Good job!"
end
