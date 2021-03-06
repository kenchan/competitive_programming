X = gets.chomp

ans = 0
cs, ct = 0, 0

X.each_char do |c|
  if c == 'T'
    if cs > 0
      cs -= 1
    else
      ct += 1
    end
  else
    cs += 1
  end
end

puts cs + ct
