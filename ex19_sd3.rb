def cheese_and_crackers(cheese_count , boxes_of_crackers)
    puts "You have #{cheese_count} cheeses!"
    puts "You have #{boxes_of_crackers} boxes of crackers!"
    puts "Man that's enough for party"
    puts "Get a blanket.\n"
end


def fish_and_potatoes(fish_count, potatoes_count)
    print "You have #{fish_count} fishs "
    puts "and #{potatoes_count} potatoes!\n\n"
end

puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)


puts "OR, we can use variales from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)


puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)


puts "And we can combine the two, variales and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)


fish_and_potatoes(2, 2)

amount_of_fishs = 3
amount_of_potatoes = 4
fish_and_potatoes(amount_of_fishs, amount_of_potatoes)

fish_and_potatoes(2 + 4, 2 + 5)
fish_and_potatoes(amount_of_fishs + 5, amount_of_potatoes + 6)
fish_and_potatoes(3 - 2, 6 - 3)
fish_and_potatoes(14 % 3, 12 / 2)
fish_and_potatoes(gets.chomp, gets.chomp)
fish_and_potatoes(gets.chomp.to_i + 5, gets.chomp.to_i + 3)
fish_and_potatoes(amount_of_fishs + 3 - 2, amount_of_potatoes + 4 - 2)
fish_and_potatoes(true, false)
