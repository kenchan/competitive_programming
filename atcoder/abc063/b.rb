S = gets.chomp.split('')

puts S.size == S.uniq.size ? 'yes' : 'no'
