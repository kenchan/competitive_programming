# https://atcoder.jp/contests/abc273/tasks/abc273_c

N = gets.to_i
As = gets.split.map(&:to_i)

h = As.each_with_object(Hash.new(0)) {|a, h| h[a] += 1 }

h.keys.sort.reverse.each do |k|
  puts h[k]
end

(N - h.size).times do
  puts 0
end

