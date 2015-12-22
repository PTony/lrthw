puts "text"  # Print "text" and finish with a newline
print "text" # Print "text" and DONT finish with a newline
# # pound character or octothorpe - used for comment
#{ ... } # format string - string interpolation
%{ ... } #
formatter = "%{first} %{second}" # format string

"""
multiple
lines
text
"""

gets.chomp
.to_i # convert to integer
.to_f # convert to float
ARGV # Arguments
ARGV.first
$stdin.gets.chomp

f = open(filename)  # Open a file. This return a file object, here assigned to "f"
f.read              # read the content of the filename
f.readline          # read just one line of the file
f.truncate          # Empties the file
f.write('text')     # Write "text" to the file "f"
f.close             # Close the file
open(filename, r)   # Open a file in read mode
open(filename, w)   # Open a file in write mode
open(filename, a)   # Open a file in appends mode
open(filename, r+)  # Open a file in read-write mode
open(filename, w+)  # Open a file in write-read mode
open(filename, a+)  # Open a file in appends-write mode

File.exist?(my_file)    # test if the file "my_file" exist and bolean

def my_function(*args)
    arg1, arg2 = args
    ...
    ...
end

f.seek(0) # set the cursor of the file on the it 0, or more clearly move the cursor at the eginnnig of the file

return my_value # in a function, return a value in output
