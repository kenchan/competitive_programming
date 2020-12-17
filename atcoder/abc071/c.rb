n = gets.to_i
ss = [100] * 26

1.upto(n) do
  tmp = [0] * 26
  gets.chomp.each_char do |c|
    tmp[c.ord - 97] += 1
  end

  0.upto(25) do |i|
    if tmp[i] < ss[i]
      ss[i] = tmp[i]
    end
  end
end

puts ss.each_with_index.map {|c, i|
  (97 + i).chr * c
}.join
