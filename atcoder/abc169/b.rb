N = gets.to_i
A = gets.split.map(&:to_i)

if A.include?(0)
  puts 0
  exit
end

puts A.inject(1) {|acc, i|
  b = acc * i
  if b > 10 ** 18
    puts -1
    exit
  end
  b
}
