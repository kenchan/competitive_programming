N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

all = A.inject(&:+)

puts M <= A.select {|a| (all.to_f / (4 * M)) <= a }.count ? 'Yes' : 'No'
