S = gets.chomp

if S.length < 4
  S.split('').permutation do |ss|
    if ss.join.to_i % 8 == 0
      puts 'Yes'
      exit
    end
  end
  puts 'No'
else
  eight = 8.step(999, 8).map {|i| ("%03d" % i).split('').tally }

  s = S.length < 4 ? '%03d' % S.to_i : S

  ss = s.split('').tally

  puts eight.any? {|hash| hash.all? {|k, v| ss[k] && v <= ss[k] } } ? 'Yes' : 'No'
end
