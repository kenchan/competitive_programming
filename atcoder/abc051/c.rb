sx, sy, tx, ty = gets.split.map(&:to_i)

dx = tx - sx
dy = ty - sy

# s -> t
dy.times do
  print 'U'
end

dx.times do
  print 'R'
end

# t -> s
dy.times do
  print 'D'
end

dx.times do
  print 'L'
end

# s -> t
print 'L'

(dy + 1).times do
  print 'U'
end

(dx + 1).times do
  print 'R'
end

print 'D'

# t -> s
print 'R'

(dy + 1).times do
  print 'D'
end

(dx + 1).times do
  print 'L'
end

print "U\n"
