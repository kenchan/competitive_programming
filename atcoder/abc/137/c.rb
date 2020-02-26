N = gets.to_i
s = N.times.map {
  gets.chomp.split(//).sort
}

s = s.group_by(&:itself).map {|k, v| [k, v.size]}

ans = s.inject(0) {|acc, (k, v)|
  next acc if v == 1
  acc + (v * (v - 1) / 2)
}

puts ans
