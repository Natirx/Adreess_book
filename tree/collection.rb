def create_list 
    print "what is the list?"
    name = gets.chomp
    hash = {"name" => name, "items" => [] }
  return hash 
end
  
  def add_list_item
    print "what is item called?"
    item_name = gets.chomp
    print "how much?"
    quantity = gets.chomp.to_i
    hash = {"name" => item_name, "quantity" => quantity}
    return hash
 end
def print_separator(character="-")
    puts character * 40
end
  def print_list(list)
    puts "List: #{list['name']}"
    print_separator()
    
    list["items"].each do |item|
    puts "\tItem: " + item['name'] + "\t\t" +
    "QUanity: " +  item['quantity'].to_s
end
    print_separator()

end

  list = create_list()
  list['items'].push(add_list_item)
  list['items'].push(add_list_item)
  list['items'].push(add_list_item)
  print_list(list)