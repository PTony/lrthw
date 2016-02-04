def dark_room ()
  puts "You are in a dark room, There is nothing here except 2 doors."
  puts "One in North side and one on the East side."
  puts "Which one do you choose?"

  puts "> "
  choice = $stdin.gets.chomp
  if choice.include? "north"
    bear_room
  elsif choice.include? "east"
    empty_room
  else
    puts "You can't do that, retry!\n\n"
    dark_room
  end
end

def bear_room ()
  puts "Inside this room there is a honey pot a bear and 3 doors"
  puts "One on North side, one on the East, and the other South side."
  puts "There is also a honey pot and a bear"
end

def empty_room ()
  puts "You enter an Empty room, there is nothing except 3 doors."
  puts "One on North side, one on East side and one on West side"
  puts "Which one did you choose?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "north"
    cthulhu_room
  elsif choice.include? "east"
    infinite_hole
  elsif choice.include? "west"
    dark_room
  else
    puts "This is not possible retry!"
    empty_room
  end
end

def chthulhu_room ()
  puts "You enter a room with a giant hole full of water in it, there is a tubu"
  puts "Around this hole, 3 doors. One in North, one in South and one on West side"
  puts "On the ground there is a tuba and palms kit and a harpon."
  puts "Wait! There is bubbles in the water, there is a tunnel and wait! Something is coming from it... OMG! This is Cthulhu, he is now surfacing and staring at you and yelling like the demons of hell"
  puts "What are you doing ?"

  cthulhu_dead = false

  puts "> "
  choice = $stdin.gets.chomps

  if (choice.include? "go" | choice include? "open") & choice.include? "door"
    if choice.include? "north" && cthulhu_dead
      treasure_room
    elsif choice.include? "south" && cthulhu_dead
      empty_room
    elsif choice.include? "west" && cthulhu_dead
      bear_room
    elsif !cthulhu_dead
      dead("You go nowhere, Tchulhu make you a piece of shit and send you in hell")
    end
  elsif choice.include? "throw harpon at tchulhu"
    puts "OMG, you hit him between his eyes. He go down, look like you killed him"
  else
    "This is not possible, retry"
end

def infinite_hole ()
  dead("Take care were you walk, there is an infinite hole here and you fall in it")
end

def skeleton_room ()
  puts "You enter a room with one living skeleton in it."
end

def secret_room ()
  puts "You enter a strange room"
  puts "There is no doors"
end

def treasure_room ()
  puts "You enter the treasure room"
end

def dead (why)
  puts why, "GAME OVER !!!"
  exit 0
end

dark_room()
