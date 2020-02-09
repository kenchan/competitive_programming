n = gets.to_i
s = gets.chomp

before = ''
count = 0

s.each_char do |ch|
  if before != ch
    count += 1
  end
  before = ch
end

puts count
