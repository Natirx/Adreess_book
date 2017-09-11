def bigger(a,b)
  if (a > b)
    return a
  else return b

  end
end
def absolute(a)
  return a.abs
end
puts bigger(11,5)

puts absolute(-1)
def are_you_ok?()
  b = gets.chomp
  if (b == "ok")
    puts "Awensom"
  end
end
puts are_you_ok?()
