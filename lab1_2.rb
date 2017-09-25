@rating = {}
@rating["adele"] = 9
@rating["adam"] = 10
@rating["bieber"] = 1
@rating["drake"] = 5


def better_singer(first, last)
  if @rating[first] > @rating[last]
    puts first
  else
    puts last
  end
end
better_singer("adele", "adam")
def total_rating(rating_some)
  sum = 0
    rating_some.each do |key, value|
      sum += value
end
sum
end
puts total_rating(@rating)
def total(numbers)
  sum = 0 
numbers.each do |el|
    sum += el
end
sum
end
puts total([1,2,3])
def test_total(numbers, expected)
  # calculate
  result = total(numbers)
  
  # check
  if result == expected
    puts "CORRECT! total(#{numbers.inspect}) = #{result}"
  else
    puts "WRONG! total(#{numbers.inspect}) is #{result}? Why not #{result}? :'("
  end
end
test_total([], 0)
test_total([123], 123)
test_total([1, 2, 3], 6)
test_total([10, -10, 99], 99)
test_total((1..10).to_a, 55)

def square_total(numbers)
  sum = 0
  arr = numbers.map{|el| el *= el}
  arr.each do |elem|
    sum += elem
  end
  sum
end

def test_square_total(numbers, expected)
  # calculate
  result = square_total(numbers)
  
  # check
  if result == expected
    puts "CORRECT! square_total(#{numbers.inspect}) = #{result}"
  else
    puts "WRONG! square_total(#{numbers.inspect}) is #{result} instead of #{expected}"
  end
end

test_square_total([], 0)
test_square_total([1], 1)
test_square_total([1, 2], 1 * 1 + 2 * 2)
test_square_total([1, -1, 9], 1 * 1 + (-1) * (-1) + 9 * 9)
test_square_total((1..10).to_a, 385)
puts "My 6-8 poem:"
["roses are red, violets are blue", "map is easy but it makes me dizzy"].map {|sentence| sentence.capitalize}.each_with_index do |line, index|
  puts "Line #{index + 1} :: #{line} :: #{line.split.length} words"
end
my_tasks = [
  {name: "learn ruby", priority: 10},
  {name: "learn html", priority: 8},
  {name: "learn css", priority: 5},
  {name: "learn js", priority: 9}
]

def most_important(tasks)
tasks.each do |value|
 puts value
end
end
most_important(my_tasks)

def sorted(tasks)
  puts sorted_todo = tasks.sort{|x,y| x[:priority] <=> y[:priority]}
end
puts sorted(my_tasks)