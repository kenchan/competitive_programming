a, b, c, k = STDIN.gets.split.map(&:to_i)
#
#if a == b && b == c && c == a
#  puts 0
#end
#
#k.times do
#  na = b + c
#  nb = a + c
#  nc = a + b
#  a, b, c = na, nb, nc
#  if (a - b).abs > 10**18
#    puts 'Unfair'
#  end
#end
#
#puts a - b

d = a - b

if d.abs > 10**18
  puts 'Unfair'
  exit
end

d = d * -1 if k.odd?

puts d
