A, B = gets.split.map(&:to_i)

if B == 1
  puts 0
  exit
end

count = 1
con = A

loop do
  if B <= con
    break
  end
  con += A - 1
  count += 1
end

puts count
