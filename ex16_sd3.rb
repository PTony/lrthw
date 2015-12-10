filename = ARGV.first

formatter = "%{first}\n%{second}\n%{third}\n"

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^Ĉ)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."
target.write(formatter %{first: line1, second: line2, third: line3})

puts "And finally, we close it."
target.close
