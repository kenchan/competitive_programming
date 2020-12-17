N = gets.to_i

10.times do |i|
  if N < 2 ** (i + 1)
    puts 2 ** i
    exit
  end
end