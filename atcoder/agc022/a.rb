S = gets.chomp.chars

if S.size == 26
  25.downto(1) do |i|
    unless S[i - 1] > S[i]
      print S[0, (i - 1)].join
      print S[i..-1].sort.find {|c| S[i - 1] < c }
      print "\n"
      exit;
    end
  end

  puts '-1'
  exit
else
  letters = ('a'..'z').to_a

  S.each do |c|
    letters.delete(c)
  end

  puts "#{S.join}#{letters.first}"
end
