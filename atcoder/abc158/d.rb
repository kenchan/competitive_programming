S = gets.chomp
Q = gets.to_i

s = S
before = []
after = []
reverse = false

Q.times do
  t, f, c = gets.split

  if t == '1'
    reverse = !reverse
  else
    if (f == '1' && !reverse) || (f == '2' && reverse)
      before << c
    else
      after << c
    end
  end
end

(reverse ? after : before).reverse.each do |c|
  print c
end

print reverse ? s.reverse : s

(reverse ? before : after).each do |c|
  print c
end
