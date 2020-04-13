K = gets.to_i

sum = 0

1.upto(K) do |a|
  1.upto(K) do |b|
    1.upto(K) do |c|
      sum += a.gcd(b).gcd(c)
    end
  end
end

puts sum
