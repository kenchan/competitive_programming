N = STDIN.gets.to_i
P = STDIN.gets.split().map(&:to_i)
Q = STDIN.gets.split().map(&:to_i)

perm = (1..N).to_a.permutation(N).to_a

puts (perm.index(P) - perm.index(Q)).abs
