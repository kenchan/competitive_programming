A, B, W = gets.split.map(&:to_i)

min, max = 10 ** 9, -1

0.upto(1_000_000) do |i|
  if A * i <= 1000 * W && 1000 * W <= B * i
    if i <= min
      min = i
    end
    if max <= i
      max = i
    end
  end
end

if min == 10 ** 9
  puts 'UNSATISFIABLE'
else
  puts "#{min} #{max}"
end
