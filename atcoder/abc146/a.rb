s = gets.chomp

W =%w(SUN MON TUE WED THU FRI SAT)

W.each_with_index do |w, i|
  if w == s
    puts W.length - i
    exit
  end
 end
