puts "Vous entrez dans une maison face à vous 3 portes, 1, 2 et 3. Laquelle ouvrez-vous?"

porte = $stdin.gets.chomp
if porte == "1"
    puts "Cette porte donne sur un laboratoire ou se trouve une bibliothèque et une table avec des flacons et tubes."
    puts "1. "
    puts "2. "
    puts "3. "
elsif porte == "2"
    puts "Dans cette piece ce trouve une chambre avec un lit, quelqu'un semble allongé dedans"
    puts "1. "
    puts "2. "
    puts "3. "
elsif porte == "3"
    puts "Cette porte donne sur un escalier qui mène au sous-sol"
    puts "1. "
    puts "2. "
    puts "3. "
end
