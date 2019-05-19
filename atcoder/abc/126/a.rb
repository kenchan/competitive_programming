n, k = STDIN.gets.split.map(&:to_i)
s = STDIN.gets

s[k - 1] = s[k - 1].downcase

puts s
