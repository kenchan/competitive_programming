N = gets.to_i
xy = N.times.map { gets.split.map(&:to_i) }

ans = 0

0.upto(N - 2) do |i|
  (i + 1).upto(N - 1) do |j|
    if ((xy[j][1] - xy[i][1]).to_f / (xy[j][0] - xy[i][0])).abs <= 1
      ans += 1
    end
  end
end

puts ans

