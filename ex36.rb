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
  puts "You enter a room with a giant pool in it"
  puts "Around this pool, 3 doors. One in North, one in South and one on West side"
  puts "On the ground there is a tuba and palms kit and a harpon."
  puts "Wait! Something move in the poll... OMG! This is Cthulhu coming from a tunnel inside the pool"
  puts "What are you doing ?"

  puts "> "
  choice = $stdin.gets.chomps

  if (choice.include? "go" | choice include? "open") & choice.include? "door"
    if choice.include? "north"
      treasure_room
    elsif choice.include? "south"
      empty_room
    elsif choice.include? "west"
      bear_room
  elsif
  else
end

def infinite_hole ()
  dead("Take care were you walk, there is an infinite hole here and you fall in it")
end

def skeleton_room ()
  puts "You enter a room one living skeleton."
end

def secret_room ()
  puts "You enter an apparently secret room"
  puts "Look like there is no doors"
end

def treasure_room ()
  puts "You enter the treasure room"
end

def dead (why)
  puts why, "GAME OVER !!!"
  exit 0
end

dark_room()
