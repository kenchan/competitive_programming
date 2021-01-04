N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

if A.sum < B.sum
  puts '-1'
  exit
end

plus, minus = N.times.map {|i| A[i] - B[i] }.partition {|e| e >= 0}

if minus.size == 0
  puts 0
  exit
end

plus.sort_by! {|e| e * -1 }

diff = 0
minus_sum = minus.sum

plus.each do |e|
  diff += 1
  minus_sum += e

  if minus_sum > 0
    break
  end
end

puts diff + minus.size
