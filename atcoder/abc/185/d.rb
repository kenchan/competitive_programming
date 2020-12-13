N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort

if M == 0
  puts 1
  exit
elsif A.size == N
  puts 0
  exit
end

if A.first != 1
  A.unshift(0)
end

if A.last != N
  A << N + 1
end

min = N

aa = A.each_cons(2).map {|i, j|
  k = j - i - 1
  if k < min && 0 < k
    min = k
  end
  k
}

puts aa.inject(0) {|acc, k|
  if k == 0
    acc
  else
    acc + (k.to_f / min).ceil
  end
}
