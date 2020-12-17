t = STDIN.gets.to_i.times.map {|_| STDIN.gets.to_i }

tmp = 0
puts t.sort.map {|i| tmp = tmp + i; tmp}.inject(&:+)

pat = 1
t.each_with_object({}) {|i, hash|
  hash[i] = (hash[i] || 0) + 1
}.each {|_, c|
  pat = pat * (1..c).inject(&:*)
}

puts pat % 1000000007
