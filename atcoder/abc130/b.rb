N, X = gets.split.map(&:to_i)
L = gets.split.map(&:to_i)

D = L.inject([0]) {|acc, l| acc << acc.last + l }

D.each_with_index do |d, i|
  if X < d
    puts i
    exit
  end
end

puts N + 1
