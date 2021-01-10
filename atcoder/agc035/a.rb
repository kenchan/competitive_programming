N = gets.to_i
a = gets.split.map(&:to_i)

at = a.tally

if at[0] == N
  puts 'Yes'
else
  if at.keys.size == 2
    if at[0] == N / 3 && at[(at.keys - [0]).first] == N * 2 / 3
      puts "Yes"
    else
      puts "No"
    end
  elsif at.keys.size == 3
    if at.values.all? {|c| c == N / 3 } && at.keys.inject(0) {|acc, c| acc ^ c } == 0
      puts 'Yes'
    else
      puts 'No'
    end
  else
    puts 'No'
  end
end
