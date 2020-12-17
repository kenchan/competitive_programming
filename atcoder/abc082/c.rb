N = gets.to_i
a = gets.split.map(&:to_i)

puts a.tally.inject(0) {|acc, (num, count)|
  if num <= count
    acc + (count - num)
  else
    acc + count
  end
}
