N = gets.to_i
A = gets.split.map(&:to_i)

ans = A.first

A.each do |a|
  ans = ans.gcd(a)
end

puts ans
