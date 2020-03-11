N, K = gets.split.map(&:to_i)

ab = N.times.map {
  gets.split.map(&:to_i)
}

k = K

ab.sort.each do |a, b|
  k -= b
  if k <= 0
    puts a
    exit
  end
end
