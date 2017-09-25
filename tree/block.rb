def get_name(prompt, &block)
    print prompt + ": "
    name = gets.chomp
    yield name if block_given?
    name
end

my_name = get_name("Enter you name") do |your_name|
    puts "that's a cool name, #{your_name}"
end
puts "my name: #{my_name}"
string = "Treehouse"
string.each_char {|l| print "#{l}-"}
