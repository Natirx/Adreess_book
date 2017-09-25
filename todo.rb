my_tasks = [
    {name: "learn ruby", priority: 10},
    {name: "learn html", priority: 8},
    {name: "learn css", priority: 5},
    {name: "learn js", priority: 9}
]
task= [
    {"name"=>"learn symbol", "priority"=>1},
     {"name"=>"review string", "priority"=>2},
     {"name"=>"take a break", "priority"=>3},
     {"name"=>"make code cleaner", "priority"=>4}
]

def most_important(tasks)
  tasks.each do |value|
   value.each do |key, val|
     puts key
   end
  end
end
most_important(my_tasks)

def to_task(names)
  hash = {}
  names.each_with_index do |value, index|
    hash[:name] = value
    hash[:priority] = index * rand(3)
    puts hash

  end
end
to_task(["learn symbol", "review string", "learn hash"])

old_task = {"name" => "learn hash", "priority" => 1}
def symbolize(old_task)
    new_task = {}
  old_task.each do |value, key|
    new_task[value.to_sym] = key
  end
  puts new_task
end
puts "==="
puts old_task
symbolize(old_task)
def symbolist(tasks)
  new_hash ={}
  tasks.each do |value|
     value.e do |key,val|
       new_hash[key.to_sym] = val

     end
 puts new_hash
  end

end
puts "==="
symbolist(task)