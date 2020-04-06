N = gets.to_i
XC = N.times.map { gets.split }

R, B = XC.partition {|x, c| c == 'R' }

puts R.sort_by {|x, _| x.to_i }.map(&:first).join("\n")
puts B.sort_by {|x, _| x.to_i }.map(&:first).join("\n")
