S = gets.chomp

before = S[0]
count = 0

S.each_char do |c|
  if before != c
    count += 1
  end
  before = c
end

puts count
