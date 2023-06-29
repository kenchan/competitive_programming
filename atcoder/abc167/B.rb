A, B, C, K = gets.split.map(&:to_i)

ans = 0

k = K

if A <= k
  ans += 1 * A
  k -= A
else
  puts 1 * K
  exit
end

if B <= k
  k -= B
else
  puts ans
  exit
end

puts ans - k
