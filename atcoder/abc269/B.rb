# https://atcoder.jp/contests/abc269/tasks/abc269_b

Ss = Array.new(10) { gets.chomp }

ans = []

10.times do |i|
  10.times do |j|
    if Ss[i][j] == "#"
      ans << [i + 1, j + 1]
    end
  end
end

puts "#{ans.map(&:first).min} #{ans.map(&:first).max}"
puts "#{ans.map(&:last).min} #{ans.map(&:last).max}"
