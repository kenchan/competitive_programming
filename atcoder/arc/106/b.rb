require 'set'

N, M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
cd = M.times.map { gets.split.map(&:to_i) }

if a == b
  puts 'Yes'
  exit
end

m = 0.upto(N - 1).inject({}) {|h, i|
  h[i] = Set.new([i])
  h
}

m2 = cd.each_with_object(m) {|(c, d), hash|
  h = hash[c - 1] + hash[d - 1]
  h.each do |i|
    hash[i] = h
  end
}

m2.each do |_, s|
  if a.values_at(*s).sum != b.values_at(*s).sum
    puts 'No'
    exit
  end
end

puts 'Yes'
