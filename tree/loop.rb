loop do 
    print "Enter a number greater than 10: "
    answer = gets.chomp.to_i
    break if answer > 10
end