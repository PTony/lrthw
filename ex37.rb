BEGIN {
  puts "This is an instruction called when the script start with \"BEGIN\" keyword"
}

END {
  puts "This is an instruction called when the script is done with \"END\" keyword"
}

alias text puts
text "We use an alias to use \"puts\" fonction with the keywork \"text\""

puts "\"and\" is a logical and but" and "lower priority than \"&&\""

begin
  puts "Here we are in a \"begin\" block"
  puts "We will intentionaly generate an error to catch it"
  file = open("/unexistant_file.txt")
rescue
  puts "An error was detected"
end

i = 0
while true
  i += 1
  puts "Here we are in a while loop, and it's pass number #{i}"
  puts "and we meet a \"break\" instruction"
  break
end

case i
when 1
  puts "i = 1"
else
  puts "i != 1"
end

class X
end

def my_function(arg)
  puts "#{arg}"
end
my_function("Here we use a function declared with \"def\" keyword")

puts "At line below we test if \my_function\" is defined"
puts defined?(my_function) == "method"

(0..3).each do |x|
  puts "here we are in a \"do\" loop, and its pass #{x}"
end
