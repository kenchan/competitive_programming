N = gets.to_i
AB = N.times.map { gets.split.map(&:to_i) }

AB.sort_by! {|a, b| 2 * a + b }
AB.reverse!

aoki = AB.sum(&:first)
takahashi = 0
ans = 0

AB.each do |a, b|
  ans += 1
  aoki -= a
  takahashi += b + a

  if aoki < takahashi
    break
  end
end

puts ans
