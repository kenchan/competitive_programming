N = gets.to_i
A = gets.split.map(&:to_i)

A.sort!

s = 0.upto(N - 1).inject([0]) do |acc, i|
  acc[i + 1] = acc[i] + A[i]
  acc
end

p s
p A

puts 1.upto(N - 1).inject(0) {|acc, i|
  acc + s[i + 1] - (N - i) * A[i]
}
