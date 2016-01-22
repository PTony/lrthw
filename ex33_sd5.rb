i = 0
numbers = []
def wloop(i, numbers, target, increment)
    (0 .. 6).each do |i|
        puts "At the top i is #{i}"
        numbers.push(i)

#        i += increment
        puts "Numbers now: ", numbers
        puts "At the bottom i is #{i}"
    end
end

wloop(i, numbers, 6, 3)
puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num}
