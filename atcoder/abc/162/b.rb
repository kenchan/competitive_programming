puts 1.upto(gets.to_i).inject(0) {|acc, i|
  if i % 3 == 0 || i % 5 == 0
    acc
  else
    acc + i
  end
}
