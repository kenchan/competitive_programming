N, C, K = gets.split.map(&:to_i)
T = N.times.map { gets.to_i }

T.sort!

bus = 0
num = 0
start = 0

T.each do |t|
  if num == 0
    start = t
  end

  if start + K < t
    bus += 1
    num = 0
    start = t
  end

  num += 1

  if num == C
    bus += 1
    num = 0
  end
end

if num > 0
  bus += 1
end

puts bus
