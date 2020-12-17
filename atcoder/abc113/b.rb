N = gets.to_i
T, A = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)

min = 10 ** 9
ans = 0

H.each.with_index {|h, i|
  t = T - h * 0.006
  if (A - t).abs < min
    min = (A - t).abs
    ans = i + 1
  end
}

puts ans
