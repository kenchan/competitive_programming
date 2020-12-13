N, M, T = gets.split.map(&:to_i)
AB = M.times.map { gets.split.map(&:to_i) }

bt = N
bb = 0

AB.each do |a, b|
  bt -= a - bb
  bb = b

  if bt <= 0
    puts 'No'
    exit
  end

  bt += b - a

  if bt > N
    bt = N
  end
end

if bt - (T - AB.last[1]) <= 0
  puts 'No'
else
  puts 'Yes'
end
