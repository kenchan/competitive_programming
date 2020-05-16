K, S = gets.split.map(&:to_i)

c = 0

0.upto(K) do |x|
  0.upto(K) do |y|
    z = (S - (x + y))
    if 0 <= z && z <= K
      c += 1
    end
  end
end

puts c
