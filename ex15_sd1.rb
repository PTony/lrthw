# Store the argument in "filename""
filename = ARGV.first
# open file "filename" and store the resulting object in "txt"
txt = open(filename)
# Display message with "filename" value
puts "Here's your file #{filename}:"
# Print "txt"
print txt.read
# Print message for typing the filename
print "Type the filename again: "
# Ask input for the filename and store it in "file_again"
file_again = $stdin.gets.chomp
# Open the  file "file_again" and store the resulting object in "txt_again"
txt_again = open(file_again)
# Print "txt_again"
print txt_again.read
