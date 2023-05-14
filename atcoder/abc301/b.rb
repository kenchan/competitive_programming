n = gets.to_i
a = gets.split.map(&:to_i)

ans = [a.first]

a.each_cons(2) do |i, j|
  if (i - j).abs == 1
    ans << j
  elsif i < j
    ans << ((i +1)..j).to_a
  else
    ans << (i - 1).step(j, -1).to_a
  end
end

puts ans.join(' ')
