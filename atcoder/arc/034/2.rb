n = STDIN.gets.to_i
result = []

([n - 153, 0].max).upto(n) do |i|
  result << i if  n == i + i.to_s.split('').map(&:to_i).inject(:+)
end

if result.empty?
  puts 0
else
  puts result.size
  puts result
end
