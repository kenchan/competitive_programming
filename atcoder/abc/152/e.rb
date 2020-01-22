_n = STDIN.gets
a = STDIN.gets.split.map(&:to_i)

lcm = a.inject(1) {|acc, i|
  acc.lcm(i)
}

an = a.inject(0) {|acc, i| acc + lcm / i }

puts an % (10 ** 9 + 7)