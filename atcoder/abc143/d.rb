N = gets.to_i
L = gets.split.map(&:to_i)

ans = 0
ll = L.sort

0.upto(N - 3) do |i|
  (i + 1).upto(N - 2) do |j|
    a = ll[i]
    b = ll[j]

    index = ll.bsearch_index {|c| a + b <= c } || N

    if j < index
      ans += index - 1 - j
    end
  end
end

puts ans
