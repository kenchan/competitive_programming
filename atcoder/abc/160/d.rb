N, X, Y = gets.split.map(&:to_i)

ans = [0] * (N - 1)

1.upto(N - 1) do |i|
  (i + 1).upto(N) do |j|
    l1 = (j - i).abs
    l2 = (X - i).abs + 1 + (Y - j).abs
    l3 = (X - j).abs + 1 + (Y - i).abs
    min = [l1, l2, l3].min
    ans[min - 1] += 1
  end
end

puts ans.join("\n")
