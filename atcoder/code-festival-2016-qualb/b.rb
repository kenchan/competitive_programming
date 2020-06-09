N, A, B = gets.split.map(&:to_i)
S = gets.chomp

a = 0
b = 0

S.each_char do |c|
  case c
  when 'a'
    if a + b < A + B
      puts 'Yes'
      a += 1
    else
      puts 'No'
    end
  when 'b'
    if (a + b < A + B) && (b < B)
      puts 'Yes'
      b += 1
    else
      puts 'No'
    end
  when 'c'
    puts 'No'
  end
end