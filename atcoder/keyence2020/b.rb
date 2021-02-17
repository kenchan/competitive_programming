N = gets.to_i
XL = N.times.map { gets.split.map(&:to_i) }

arms = XL.map {|x, l| [x - l, x + l] }.sort_by {|s, e| e }

current = -10 ** 9 - 1

puts arms.count {|s, e|
  if s < current && current <= e
    false
  else
    current = e
    true
  end
}
