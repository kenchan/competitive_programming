require 'set'

N, K = gets.split.map(&:to_i)
Aa = gets.split.map(&:to_i).inject(Set.new) {|set, a| set << a }

K.times do |k|
  unless Aa.include?(k)
    puts k
    exit
  end
end

puts K
