N, M = gets.split.map(&:to_i)
X = gets.split.map(&:to_i)

if M <= N
  puts 0
  exit
end

X.sort!

diff = X.each_cons(2).map {|a, b| (b - a).abs }

puts diff.sort.first(M - N).sum
