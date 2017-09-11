todo = [
    "learn numbers",
    "learn strings",
    "learn variables",
    "learn if/else",
    "learn methods",
    "learn arrays",
    "learn hash"
]
todo.each_with_index do |item, i|
  puts "#{i+1}. #{item}"
end
def pritn_separator(word)
  puts "=" *10 + "#{word}" + "="*10
end
done =[
    true,
    true,
    true,
    false,
    true,
    true,
    false
]

todo_display = todo.map.with_index do |item, i|
  if done[i]
    "[x]" + item
  else
    "[ ]" + item
  end
end
puts todo_display
pritn_separator("hash")

todo_hash = [
    {"name" => "learn numbers", "done" => true},
    {"name" => "learn strings", "done" => true},
    {"name" => "learn variables", "done" => true},
    {"name" => "learn if/else", "done" => false},
    {"name" => "learn arrays", "done" => true},
    {"name" => "learn method", "done" => true},
    {"name" => "learn hash", "done" => false}
]
puts todo_hash.first
puts todo_hash.last
puts todo_hash[0]["name"]
todo_hash.each do |item|
  if item["done"]
    puts "[x]" + item["name"]
  else
    puts "[ ]  #{item["name"]}"
  end
end
adele = {"name" => "adele", "age" => 29}
bieber = {"name" => "bieber", "age" =>23}

def older_artist(first,second)
if first["age"] > second["age"]
  first
else
  second
end
end
older = older_artist(adele,bieber)
puts "how old #{older["age"]}"