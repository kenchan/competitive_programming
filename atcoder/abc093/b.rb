A, B, K = gets.split.map(&:to_i)

((A..B).first(K) | (A..B).last(K)).each do |n|
  puts n
end
