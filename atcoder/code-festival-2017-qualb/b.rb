N = gets.to_i
D = gets.split.map(&:to_i)
M = gets.to_i
T = gets.split.map(&:to_i)

d = D.tally
t = T.tally

puts t.all? {|difficult, num| num <= (d[difficult] || 0) } ? 'YES' : 'NO'
