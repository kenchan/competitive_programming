n, k = gets.split.map(&:to_i)
S = gets.chomp

ans = []

S.chars do |c|
  if c == 'o' && 0 < k
    ans << 'o'
    k -= 1
  else
    ans << 'x'
  end
end

puts ans.join
