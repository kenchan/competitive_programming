require 'set'

N, M = gets.split.map(&:to_i)
ab = M.times.map { gets.split.map(&:to_i) }

route = ab.inject({}) {|acc, (a, b)|
  acc[b] ||= Set.new
  acc[b] << a
  acc
}

route_1 = route[N]

if route_1&.empty?
  puts 'IMPOSSIBLE'
  exit
end

route_1&.each do |r|
  if route[r]&.include?(1)
    puts 'POSSIBLE'
    exit
  end
end

puts 'IMPOSSIBLE'
