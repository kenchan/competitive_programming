_n = gets.to_i
s = gets.split('')
counts = s.tally
counts['A'] ||= 0
counts['T'] ||= 0

if counts['A'] == counts ['T']
  a = t = 0
  s.each do |c|
    if c == 'T'
      t += 1
    else
      a += 1
    end

    if t == counts['T']
      puts "T"
      exit
    elsif a == counts['A']
      puts "A"
      exit
    end
  end
else
  if counts['A'] < counts ['T']
    puts 'T'
  else
    puts 'A'
  end
end
