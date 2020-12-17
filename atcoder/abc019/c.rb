require 'set'

STDIN.gets
a = STDIN.gets.split(' ').map(&:to_i)

puts a.inject(Set.new) {|s, i|
  loop do
    if i % 2 == 0
      i = i / 2
    else
      break
    end
  end
  s << i
}.size
