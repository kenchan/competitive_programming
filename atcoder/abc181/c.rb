N = gets.to_i
xy = N.times.map { gets.split(" ").map(&:to_i) }

xy.sort.combination(3).each do |a, b, c|
  d_ba = [b[0] - a[0], b[1] - a[1]]
  d_cb = [c[0] - b[0], c[1] - b[1]]

  if d_ba[0] == 0 || d_cb[0] == 0
    if d_ba[0] == d_cb[0]
      puts 'Yes'
      exit
    end
  elsif d_ba[1] == 0 || d_cb[1] == 0
    if d_ba[1] == d_cb[1]
      puts 'Yes'
      exit
    end
  else
    if Rational(*d_ba) == Rational(*d_cb)
      puts 'Yes'
      exit
    end
  end
end

puts 'No'
