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
  puts "What are you doing?"

  print "> "
  choice = $stdin.gets.chomp
  if choice.include?("north")
  elsif choice.include?("east")
  elsif choice.include?("south")
  else
    puts "This is not possible, retry!\n\n"
    bear_room
  end
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
    puts "This is not possible, retry!"
    empty_room
  end
end


@cthulhu_dead = false
@palms_equipped = false

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


def infinite_hole
  dead("Take care were you walk, there is an infinite hole here and you fall in it")
end


def skeleton_room
  puts "You enter a room with one skeleton in it a library on west side and 2 doors."
  puts "One South side, one East Side."
  puts "What are you doing?"

  print "> "
  choice = $stdin.gets.chomp
  if choice.include?("south")
    bear_room
  elsif choice.include?("east")
    treasure_room
  elsif choice.include?("library")
    secret_room
  else
    puts "This is not possible, retry!\n\n"
    skeleton_room
  end
end

def secret_room
  puts "You enter a strange room"
  puts "There is no doors just a library and a trap"
end

def treasure_room
  puts "You enter the treasure room"
  puts "You Win !!!"
end

def dead (why)
  puts why, "GAME OVER !!!"
  exit 0
end

# dark_room()
cthulhu_room
