# Assign input_file the first argument given to script
input_file = ARGV.first

# Function that print the whole file
def print_all(f)
    puts f.read
end

# Function that return to the eginning of the file
def rewind(f)
    f.seek(0)
end

# function that print a line of a file
def print_a_line(line_count, f)
    puts "#{line_count}, #{f.gets.chomp}"
end

# we assign the current_file
current_file = open(input_file)

# Informative Message 
puts "First let's print the whole file:\n"

# We print the whole file
print_all(current_file)


#Informative message
puts "Now let's rewind, kind of like a tape."

# We return to the begin of the file
rewind(current_file)

# informative message
puts "Let's print three lines:"

# Assign 1 to current_line
current_line = 1
# Print the 1st line of current_file
print_a_line(current_line, current_file)

# current_line ++
current_line = current_line + 1
# print the second line
print_a_line(current_line, current_file)

#current_line ++
current_line = current_line + 1
# print the 3rd line
print_a_line(current_line, current_file)
