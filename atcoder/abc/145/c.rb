n = gets.to_i

xys = []

0.upto(n - 1) do
  xys << gets.split.map(&:to_i)
end

routes = 0.upto(n - 1).to_a.permutation

distances = routes.map {|route|
  route.each_cons(2).inject(0) {|acc, (p1, p2)|
    a = xys[p1]
    b = xys[p2]
    acc + Math.sqrt((a[0] - b[0]).abs ** 2 + (a[1] - b[1]).abs ** 2)
  }
}

puts distances.inject(&:+) / distances.length
