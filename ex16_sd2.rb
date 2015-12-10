filename = ARGV.first


puts "Here the content of your file #{filename}:"
txt = open(filename)
print txt.read
