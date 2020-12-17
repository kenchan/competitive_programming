S = gets.chomp

before = ''

S.each_char do |c|
  if c == before
    puts 'Bad'
    exit
  end
  before = c
end

puts 'Good'
