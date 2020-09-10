A, B, M = gets.split.map(&:to_i)

aa = gets.split.map(&:to_i)
bb = gets.split.map(&:to_i)

min = aa.min + bb.min

M.times {
  x, y, c = gets.split.map(&:to_i)
  price = aa[x - 1] + bb[y - 1] - c
  min = price if price < min
}

puts min
