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
  puts "Something move in the poll... OMG this is Cthulhu coming from a tunnel inside the pool"
  puts "What are you doing ?"
end

def infinite_hole ()
  dead("Take care were you walk, there is an infinite hole here and you fall in it")
end

def skeleton_room ()
end

def secret_room ()
end

def treasure_room ()
end

dark_room()
