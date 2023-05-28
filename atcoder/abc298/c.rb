require 'set'

n = gets.to_i
q = gets.to_i

box = {}
num = {}

q.times do
  query = gets.chomp.split(' ').map(&:to_i)

  case query[0]
  when 1
    box[query[2]] ||= []
    box[query[2]] << query[1]

    num[query[1]] ||= Set.new
    num[query[1]] << query[2]
  when 2
    puts box[query[1]].sort.join(' ')
  when 3
    puts num[query[1]].sort.join(' ')
  end
end
