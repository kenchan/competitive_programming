N, X = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)

if N == 1
  puts (X - x[0]).abs
  exit
end

puts x.each_cons(2).inject((x[0] - X).abs) {|answer, (a, b)|
  (a - b).abs.gcd(answer)
}
