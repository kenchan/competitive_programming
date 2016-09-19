scores = STDIN.gets.to_i.times.map { STDIN.gets.to_i }.sort.reverse
caps = STDIN.gets.to_i.times.map { STDIN.gets.to_i }

caps.each do |c|
  if scores.first.zero?
    puts 0
  elsif c == 0
    puts scores.first + 1
  elsif scores.length <= c
    puts 0
  else
    c.downto(0).detect do |i|
      if scores[i] == 0
        puts 0
        break
      end
      unless scores[i] == scores[i - 1]
        puts scores[i] + 1
        break
      else
      end
    end
  end
end
