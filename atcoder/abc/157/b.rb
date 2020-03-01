A = 3.times.inject([]) {|m, _|
  m + gets.split.map(&:to_i)
}

N = gets.to_i
c = []

N.times do
  b = gets.to_i
  index = A.index(b)
  if index
    c[index] = true
  end
end

if c[0] && c[1] && c[2]
  puts 'Yes'
elsif c[3] && c[4] && c[5]
  puts 'Yes'
elsif c[6] && c[7] && c[8]
  puts 'Yes'
elsif c[0] && c[3] && c[6]
  puts 'Yes'
elsif c[1] && c[4] && c[7]
  puts 'Yes'
elsif c[2] && c[5] && c[8]
  puts 'Yes'
elsif c[0] && c[4] && c[8]
  puts 'Yes'
elsif c[2] && c[4] && c[6]
  puts 'Yes'
else
  puts 'No'
end
