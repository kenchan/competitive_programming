N = gets.to_i
txy = N.times.map { gets.split.map(&:to_i) }

bt, bx, by = 0, 0, 0

txy.each do |t, x, y|
  d = (x - bx).abs + (y - by).abs
  if (t - bt) < d
    puts 'No'
    exit
  end
  if ((t - bt) - d).odd?
    puts 'No'
    exit
  end

  bt, bx , by = t, x, y
end

puts 'Yes'
