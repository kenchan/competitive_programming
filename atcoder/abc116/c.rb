N = gets.to_i
h = gets.split.map(&:to_i)

puts h.each_cons(2).inject(h[0]) {|c, (a, b)|
  if a < b
    c + b - a
  else
    c
  end
}
