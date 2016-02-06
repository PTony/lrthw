def dark_room
  puts "You are in a dark room, There is nothing here except 2 doors."
  puts "One in North side and one on the East side."
  puts "Which one do you choose?"

  puts "> "
  choice = $stdin.gets.chomp
  if choice.include?("north")
    bear_room
  elsif choice.include?("east")
    empty_room
  else
    puts "You can't do that, retry!\n\n"
    dark_room
  end
end

def bear_room
  puts "Inside this room there is a honey pot a bear and 3 doors"
  puts "One on North side, one on the East, and the other South side."
  puts "There is also a honey pot and a bear"
end

def empty_room
  puts "You enter an Empty room, there is nothing except 3 doors."
  puts "One on North side, one on East side and one on West side"
  puts "Which one did you choose?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include?("north")
    cthulhu_room
  elsif choice.include?("east")
    infinite_hole
  elsif choice.include?("west")
    dark_room
  else
    puts "This is not possible retry!"
    empty_room
  end
end

def cthulhu_room
  cthulhu_dead = false
  palms_equipped = false

  puts "\nYou enter a room with a giant hole full of water in it."
  puts "Around this hole, 3 doors. One in North, one in South and one on West side"
  if !cthulhu_dead
    puts "On the ground there is a tuba and palms kit and a harpon."
    puts "Wait! There is bubbles in the water, there is a tunnel and wait! Something is coming from it... \nOMG! This is Cthulhu, he is now surfacing and staring at you and yelling like the demons of hell"
  else
    puts "On the ground there is a tuba and palms kit."
    puts "Also we know there is a tunnel inside the hole of water"
  end
  puts "What are you doing ?"

  puts "> "
  choice = $stdin.gets.chomp

  if !cthulhu_dead && choice.include?("throw harpon at cthulhu")
    puts "OMG, you hit him between his eyes. He go down, you killed him"
    cthulhu_dead = true
    cthulhu_room
  elsif !cthulhu_dead
      dead("Wow at the second you started moving, Tchulhu make you a piece of shit and send you in hell. Look like you make a bad choice")
  elsif cthulhu_dead && (choice.include?("go") || choice.include("open")) && choice.include?("door")
    if choice.include?("north")
      treasure_room
    elsif choice.include?("south")
      empty_room
    elsif choice.include?("west")
      bear_room
    else
      puts "This is not possible, retry"
      cthulhu_room
    end
  elsif cthulhu_dead && !palm_equipped && choice.include?("grab tuba and palms kit")
    palms_equipped = true
  elsif chthulhu_dead && choice.include?("jump in water")
    puts "You jump in the water and now swim in the tunnel"
    puts "You can see a ladder with a trap door and light coming from it"
    if !palms_equipped
      dead("But you dont swim fast enough, you suffocating and drowning")
    else
      puts "You finally reach the ladder and open the trap doors"
      secret_room
    end
  else
    puts "This is not posssible, retry"
    cthulhu_room
  end
end

def infinite_hole
  dead("Take care were you walk, there is an infinite hole here and you fall in it")
end

def skeleton_room
  puts "You enter a room with one living skeleton in it."
end

def secret_room
  puts "You enter a strange room"
  puts "There is no doors"
end

def treasure_room
  puts "You enter the treasure room"
end

def dead (why)
  puts why, "GAME OVER !!!"
  exit 0
end

# dark_room()
cthulhu_room
