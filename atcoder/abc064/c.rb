N = gets.to_i
a = gets.split.map(&:to_i)

h = a.group_by {|i| i / 400 }

count =  h.keys.count {|k| k < 8 }
over =  h.inject(0) {|acc, (k, v)|
  if k < 8
    acc
  else
    acc + v.count
  end
}

puts "#{[count, 1].max} #{count + over}"
