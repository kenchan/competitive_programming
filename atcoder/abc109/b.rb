N = gets.to_i
W = N.times.map { gets.chomp }

if W.uniq.size != W.size
  puts 'No'
  exit
end

puts W.each_cons(2).all? {|(a, b)|
  a.chars.last == b.chars.first
} ? 'Yes' : 'No'
