n = gets.to_i
order = gets.split.each_with_index.inject([]) {|acc, (a, index)|
  acc[a.to_i - 1] = index + 1
  acc
}

puts order.join(" ")
