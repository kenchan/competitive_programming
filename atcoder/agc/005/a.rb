n = STDIN.gets.strip
i = 0

(10 ** 10000).times do
  nn = n.sub('ST', '')
  if n == nn
    break
  else
    n = nn
  end
end

puts n.length

# 半分じゃだめ
#n = STDIN.gets.strip
#i = 0
#
#puts n[0...(n.length / 2)].count('T') * 2
