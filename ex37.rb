BEGIN {
  puts "This is an instruction called when the script start with BEGIN keyword"
}

END {
  puts "This is an instruction called when the script is done with END keyword"
}

alias text puts
text "We use an alias to use puts fonction with the keywork text"

puts "and is a logical and but" and " lower priority than &&"

begin
