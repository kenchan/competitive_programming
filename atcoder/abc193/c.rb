require 'set'
N = gets.to_i

s = Set.new

2.upto(Math.sqrt(N).ceil) do |i|
  2.upto(N) do |j|
    if i ** j <= N
      s << i ** j
    else
      break
    end
  end
end

puts N - s.size
