s = "this IS string"
puts s.reverse
puts s.length
puts s.split
puts s.index("a")
puts s.index("IS")
puts "123".to_i
puts "12A".to_i
puts "123a123".to_i
rose_line  = "roses are red"
violet_line = "violets are blue"

def viet_hoa_dau_cau(sentence)
  return sentence.capitalize
end

puts "[Task 1] the following two must be true:"
puts "Roses are red" == viet_hoa_dau_cau(rose_line)
puts "Violets are blue" == viet_hoa_dau_cau(violet_line)

def join_sentences(str1, str2)

return str1.capitalize  + "\n" + str2.capitalize
end
puts join_sentences("this is line 1", "this is line 2")
def make_poem(lines)
  lines.each {|e|  puts e.capitalize}
end
flower_lines = ["roses are red", "violets are blue", "ruby is fun", "cool so are you"]
puts make_poem(flower_lines)
def to_words(str)
 return  str.split(" ")
end

puts to_words("roses are red")
def make_reverse_poem(arr)
  arr.each {|e| puts e.split(" ").reverse.join(" ")}
end
puts make_reverse_poem([rose_line, violet_line])