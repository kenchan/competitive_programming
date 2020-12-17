N = gets.to_i
A = gets.split.map(&:to_i)

counts = A.inject({}) {|acc, i|
  acc[i] ||= 0
  acc[i] += 1
  acc
}.select {|_k, v| v >= 2 }

all = counts.inject(0) {|acc, (k, v)|
  acc + v * (v - 1) / 2
}

A.each do |i|
  c = counts[i]
  if c && 1 < c
    puts all - ((c * (c - 1) / 2) - ((c - 1) * (c - 2) / 2))
  else
    puts all
  end
end
