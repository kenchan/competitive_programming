S = gets.chomp.split(//)

puts S.uniq.length == 1 ? 'No' : 'Yes'
