N = gets.to_i
A = gets.split.map(&:to_i)

puts A.map {|a|
  c = 0
  n = a
  while n.even?
    n /= 2
    c += 1
  end
  c
}.inject(&:+)
