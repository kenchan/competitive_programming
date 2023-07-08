# https://atcoder.jp/contests/abc309/tasks/abc309_c


N, K = gets.split.map(&:to_i)
as = Array.new(N)
bs = Array.new(N)

ab = Hash.new { 0 }
m = 0
N.times do |i|
  a, b = gets.split.map(&:to_i)

  m += b
  ab[a] += b
end

if m <= K
  puts 1
  exit
end

ab.keys.sort.each do |i|
  m -= ab[i]
  if m <= K
    puts i + 1
    exit
  end
end
