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
