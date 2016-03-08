@cthulhu_dead = false
@palms_equipped = false
@library_inspected = false
@library_open = false
@skeleton_dead = false
@bear_eating = false


def dark_room
  puts "You are in a dark room, There is nothing here except 2 doors."
  puts "One in North side and one on the East side."
  puts "Which one do you choose?"

  while true
    puts "> "
    choice = $stdin.gets.chomp
    if choice.include?("north")
      bear_room
    elsif choice.include?("east")
      empty_room
    else
      puts "You can't do that, retry!\n\n"
    end
  end
end

def empty_room
  puts "You enter an Empty room, there is nothing except 3 doors."
  puts "One on North side, one on East side and one on West side"
  puts "Which one did you choose?"

  while true
    print "> "
    choice = $stdin.gets.chomp
    if choice.include?("north")
      cthulhu_room
    elsif choice.include?("east")
      infinite_hole
    elsif choice.include?("west")
      dark_room
    else
      puts "This is not possible, retry!"
    end
  end
end

def infinite_hole
  dead("Take care were you walk, there is an infinite hole here and you fall in it")
end

def cthulhu_room
  puts "\nYou are in a room with a giant hole full of water in it."
  puts "Around this hole, 3 doors. One in North, one in South and one on West side"
  if !@cthulhu_dead
    if !@palms_equipped
      puts "On the ground there is a tuba and palms kit and a harpon."
    elsif @palms_equipped
      puts "On the ground there is a harpon"
    end
    puts "Wait! There is bubbles in the water, there is a tunnel and wait! Something is coming from it..."
    puts "OMG! This is Cthulhu, he is now surfacing and staring at you and yelling like the demons of hell"
  elsif @cthulhu_dead
    if !@palms_equipped
      puts "On the ground there is a tuba and palms kit."
    elsif @palms_equipped
      puts "There is nothing on the floor"
    else
      puts "ERROR something wrong!"
    end
    puts "Cthulhu is dead in the water, and we know there is a tunnel inside the hole"
  end
  puts "What are you doing ?"

  puts "> "
  choice = $stdin.gets.chomp

  if !@cthulhu_dead && choice.include?("throw harpon at cthulhu")
    puts "OMG, you hit him between his eyes. He go down, you killed him"
    @cthulhu_dead = true
    cthulhu_room
  elsif (choice.include?("go") || choice.include?("open")) && choice.include?("door")
    if @cthulhu_dead && choice.include?("north")
      treasure_room
    elsif @cthulhu_dead && choice.include?("south")
      empty_room
    elsif @cthulhu_dead && choice.include?("west")
      bear_room
    elsif !@cthulhu_dead
      dead("Wow at the second you started moving, Cthulhu make you a piece of shit and kill you. Look like you make a bad choice")
    else
      puts "This is not possible, retry"
      cthulhu_room
    end

  elsif !@palms_equipped && choice.include?("grab tuba and palms kit")
    @palms_equipped = true
    cthulhu_room
  elsif @cthulhu_dead && choice.include?("jump in water")
    puts "You jump in the water and now swim in the tunnel"
    puts "You can see a ladder with a trap door and light coming from it"
    if !@palms_equipped
      dead("But you dont swim fast enough, you suffocating and drowning")
    else
      puts "You finally reach the ladder and open the trap doors"
      secret_room
    end
  else
    puts "This is not possible, retry"
    cthulhu_room
  end
end

def bear_room
  puts "Inside this room there is a honey pot a bear and 3 doors"
  puts "One on North side, one on the East, and the other South side."
  puts "There is also a honey pot and a bear starring at you"
  puts "What are you doing ?"

  while true
    print "> "
    choice = $stdin.gets.chomp
    if !@bear_eating && choice == "kick honeypot"
      @bear_eating = true
      puts "The honeypot roll near the bear. He is now busy to eat the honey"
    elsif @bear_eating && choice.include?("north")
      skeleton_room
    elsif @bear_eating && choice.include?("east")
      cthulhu_room
    elsif @bear_eating && choice.include?("south")
      dark_room
    elsif !@bear_eating
      dead("The bear run to you and slap your face, probably to protect the honey")
    else
      puts "Unknow action, retry!\n\n"
    end
  end
end


def skeleton_room
  puts "You enter a room with one skeleton in it, 2 doors and a library."
  puts "One door is South side, the other is East Side."
  if !@library_open
  puts "The library is West side"
  else
    puts "The library is West side and is an open secret door"
  end
  if !@skeleton_dead
    puts "The skeleton is alive and he stand up now"
  else
    puts "There is a broken bones everywhere in the room"
  end
    puts "What are you doing?"

  while true
    print "> "
    choice = $stdin.gets.chomp

    if !@skeleton_dead && choice == "fus ro dah"
      @skeleton_dead = true
      puts "Wow !!, Are you the Dragon Born?"
      puts "This cri send the skeleton against the wall and all his bones are breaking and scarretered into the room"
    elsif !@skeleton_dead
      dead("The skeleton come to you and eat you")
    elsif @skeleton_dead && choice.include?("south")
      bear_room
    elsif choice.include?("east")
      treasure_room
    elsif @library_open && choice.include?("library")
      secret_room
    else
      puts "This is not possible, retry!\n\n"
    end
  end
end

def secret_room
  puts "You enter a strange room"
  puts "There is no doors just a library and a trap"
  if @library_open == true
    puts "the library is a secret door and is open"
  end
  puts "What are you doing ?"

  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice.include?("trap")
      puts "It seem the trap is locked. You cant open it"
    elsif choice == "inspect library"
      @library_inspected = true
      puts "All the book in the library except one are full of dust"
    elsif @library_inspected && choice == "inspect book"
      @library_open = true
      puts "Wow, this book is linked to a mechanism, it activated something, the library is now moving!!!"
      puts "Nice, it's a secret door and you find how to open it, let's seee what is behind, type \"go secret door\"\n\n"
    elsif choice == "go secret door"
      skeleton_room
    else
      puts "This is not possible. Retry !!"
    end
  end
end

def treasure_room
  puts "You enter the treasure room"
  puts "And it's great because there is a treasure in it"
  puts "There is also 2 doors."
  puts "One on South side and one West side? But who cares?\n"
  puts "Seeing this awesome treasure you are so happy and have an unstopable illarious laughing"
  puts "You fall down, laughing and suffocating, you lost control, shit your pants and vomit on yourself"
  dead("Finally you drown in your vomit and you smell crap. Poor little thing, you're arent strong enough for this sort of adventure!")
end

def dead (why)
  puts why, "GAME OVER !!!"
  exit 0
end

#dark_room
#cthulhu_room
secret_room
#treasure_room
#skeleton_room
