N, W = gets.split.map(&:to_i)
STP = N.times.map { gets.split.map(&:to_i) }

times = [0] * (2 * 10 ** 5 + 1)

STP.each do |s, t, pn|
  times[s] += pn
  times[t] -= pn
end

current = 0
times.each do |i|
  current += i
  if W < current
    puts 'No'
    exit
  end
end

puts 'Yes'
