N = gets.to_i
xy = N.times.map { gets.split }

puts xy.inject(0) {|acc, (x, y)|
  if y == 'JPY'
    acc + x.to_i
  else
    acc + 380000 * x.to_f
  end
}
