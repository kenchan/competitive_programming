N, S = gets.split

n = N.to_i
ans = 0

cc = [0, 0]

counts = S.each_char.map {|c|
  case c
  when 'A'
    cc[0] += 1
  when 'T'
    cc[0] -= 1
  when 'C'
    cc[1] += 1
  when 'G'
    cc[1] -= 1
  end
  cc.dup
}

counts.prepend([0, 0])

n.times do |i|
  (n - i).times do |j|
    ans += 1 if counts[i + j + 1][0] - counts[i][0] == 0 && counts[i + j + 1][1] - counts[i][1] == 0
  end
end

puts ans
