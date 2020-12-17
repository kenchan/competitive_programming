require 'set'

N, K = gets.split.map(&:to_i)

aa = K.times.inject(Set.new) {|s|
  _ = gets
  gets.split.each {|a| s << a.to_i }
  s
}

puts (Set.new((1..N)) - aa).size
