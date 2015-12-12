# function displaying numbers of cheese and crackers
def cheese_and_crackers(cheese_count , boxes_of_crackers)
    puts "You have #{cheese_count} cheeses!"
    puts "You have #{boxes_of_crackers} boxes of crackers!"
    puts "Man that's enough for party"
    puts "Get a blanket.\n"
end

# We use fonction by giving it numbers directly
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

# We assign variables
puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
# We use fonction by passing variables to it
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# We use fonction by passing math operations to it
puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

# We use fonction by passing variables and math operations to it
puts "And we can combine the two, variales and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
