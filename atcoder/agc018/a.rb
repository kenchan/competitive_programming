N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

gcd = A.inject(A.first) {|acc, a| acc.gcd(a) }
max = A.max

if K <= max && K % gcd == 0
  puts 'POSSIBLE'
else
  puts 'IMPOSSIBLE'
end
