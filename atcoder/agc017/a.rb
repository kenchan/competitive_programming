N, P = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

odd = A.count(&:odd?)

if odd == 0
  if P == 0
    puts 2 ** N
  else
    puts 0
  end
  exit
end

puts 2 ** (N - 1)
