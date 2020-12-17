n = STDIN.gets
s, g = STDIN.gets.split(' ').map(&:to_i)
k = STDIN.gets
r = STDIN.gets.split(' ').map(&:to_i)

r << s
r << g

puts r.length == r.uniq.length ? 'YES' : 'NO'
