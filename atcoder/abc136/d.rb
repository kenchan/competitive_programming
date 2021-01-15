S = gets.chomp.split('')

current = 'R'
count = 0

rl = S.inject([]) do |acc, c|
  if current == c
    count += 1
  else
    if current == 'R'
      acc << [count]
    else
      acc.last << count
    end

    current = c
    count = 1
  end
  acc
end

rl.last << count

ans = rl.inject([]) do |acc, (r, l)|
  (r - 1).times do
    acc << '0'
  end

  acc << 1 + (r - 1) / 2 + l / 2

  acc << 1 + r / 2 + (l - 1) / 2

  (l - 1).times do
    acc << '0'
  end

  acc
end

puts ans.join(' ')
