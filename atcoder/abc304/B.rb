N = gets.chomp.split('')

if N.size < 4
  puts N.join
else
  puts N.size.times.map {|i|
    if i >= 3
      0
    else
      N[i]
    end
  }.join
end
