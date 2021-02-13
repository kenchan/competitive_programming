T = gets.to_i
cases = T.times.map { gets.split.map(&:to_i) }

cases.each do |l, r|
  case
  when l == 0 && r == 0
    puts 1
  when l * 2 <= r
    puts (r  - l * 2 + 1) * (r - l * 2 + 2) / 2
  when l * 2 > r
    puts 0
  end
end
