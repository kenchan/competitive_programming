require 'set'
X, N = gets.split.map(&:to_i)
pn = Set.new(gets.split.map(&:to_i))

100.times do |i|
  px = X - i
  unless pn.include?(px)
    puts px
    break
  end
  px = X + i
  unless pn.include?(px)
    puts px
    break
  end
end
