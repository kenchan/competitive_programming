require 'date'

S = gets.chomp

puts Date.parse('2019/04/30') < Date.parse(S) ? 'TBD' : 'Heisei'
