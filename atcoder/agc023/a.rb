N = gets.to_i
A = gets.split.map(&:to_i)

def factorial(n)
  arr = [*1..n]
  loop do
    return arr[0] if arr.length == 1
    arr = arr.each_slice(2).map { |a, b| b ? a * b : a }
  end
end

s = [0]

A.each_with_index do |a, i|
  s[i + 1] = s[i] + a
end

t = s.tally

puts t.inject(0) {|acc, (n, c)|
  if c < 2
    acc
  elsif c == 2
    acc + 1
  else
    acc + (factorial(c) / 2 / factorial(c - 2))
  end
}
