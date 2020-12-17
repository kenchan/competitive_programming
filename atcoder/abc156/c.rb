N = gets.to_i
X = gets.split.map(&:to_i)

min = 10 ** 9

X.min.upto(X.max) do |i|
  c = X.inject(0) do |acc, x|
    acc + (x - i) ** 2
  end
  min = c if c < min
end

puts min
