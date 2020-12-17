n = STDIN.gets.to_i

m = 1.upto(n).inject({}) {|acc, i|
  k = [i.to_s[0, 1], i.to_s[-1, 1]]
  acc[k] = (acc[k] || 0) + 1
  acc
}

count = 1.upto(n).inject(0) {|cnt, i|
  k = [i.to_s[-1, 1], i.to_s[0, 1]]
  cnt + (m[k] || 0)
}

puts count