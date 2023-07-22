# https://atcoder.jp/contests/abc311/tasks/abc311_b


N, D = gets.split.map(&:to_i)
Ss = Array.new(N) { gets.chomp }

ans = 0
current = 0

D.times do |i|
  if N.times.all? {|j| Ss[j][i] == 'o' }
    current += 1
  else
    ans = [ans, current].max
    current = 0
  end
end

puts [ans, current].max
