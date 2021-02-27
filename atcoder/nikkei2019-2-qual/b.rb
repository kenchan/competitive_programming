N = gets.to_i
D = gets.split.map(&:to_i)

unless D[0] == 0
  puts 0
  exit
end

t = D.tally

if t[0] > 1
  puts 0
  exit
end


0.upto(t.keys.size - 1) do |i|
  unless t[i]
    puts 0
    exit
  end
end

puts 1.upto(t.keys.size - 1).inject(1) {|acc, i|
  (acc * t[i - 1] ** t[i]) % 998244353
}
