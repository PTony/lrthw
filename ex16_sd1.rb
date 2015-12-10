# Assign first argument value to filename variable
filename = ARGV.first

# Display some informal messages
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^Ĉ)."
puts "If you do want that, hit RETURN."

# Get the input
$stdin.gets

# Open the file in write mode
puts "Opening the file..."
target = open(filename, 'w')

# Truncate the file
puts "Truncating the file. Goodbye!"
target.truncate(0)

# Ask for typing three lines
puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

# Write the typed lines to the file
puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

# Finally close the file
puts "And finally, we close it."
target.close
