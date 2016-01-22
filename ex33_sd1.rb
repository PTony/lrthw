i = 0
numbers = []
def wloop(i, numbers, target)
    while i < 6
        puts "At the top i is #{i}"
        numbers.push(i)

        i += 1
        puts "Numbers now: ", numbers
        puts "At the bottom i is #{i}"
    end
end

wloop(i, numbers, 6)
puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num}
