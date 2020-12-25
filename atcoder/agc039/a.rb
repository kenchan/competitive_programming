S = gets.chomp.split('')
K = gets.to_i

if S.uniq.size == 1
  puts S.size * K / 2
  exit
end
  f = 1
  1.upto(S.size - 1) do |i|
    if S[i] == S.first
      f += 1
    else
      break
    end
  end

  l = 1
  1.upto(S.size - 1) do |i|
    if S.last(i) == S.last
      l += 1
    else
      break
    end
  end

ans = 0
current = ''
count = 1
S.each do |c|
  if current == c
    count += 1
  else
    ans += count / 2
    count = 1
  end

  current = c
end

ans += count / 2

if S.first == S.last
  f = 1
  1.upto(S.size - 1) do |i|
    if S[i] == S.first
      f += 1
    else
      break
    end
  end

  l = 1
  1.upto(S.size - 1) do |i|
    if S[S.size - 1 -i] == S.last
      l += 1
    else
      break
    end
  end

  puts (ans * K) - (f / 2 + l / 2) * (K - 1) + (f + l) / 2 * (K - 1)

else
  puts ans * K
end
