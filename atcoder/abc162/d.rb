require 'set'
N = gets.to_i
S = gets.chomp

R = Set.new
G = Set.new
B = Set.new

S.each_char.with_index {|c, i|
  case c
  when 'R'
    R << i
  when 'G'
    G << i
  when 'B'
    B << i
  end
}

a, b, c = [R, G, B].sort_by(&:length)

ans = 0

a.each do |i|
  b.each do |j|
    ans += c.length

    i1, j1 = [i, j].sort
    min = i1 - (j1 - i1)
    med = (i1 + j1).even? ? (i1 + j1) / 2 : -1
    max = j1 + j1 - i1

    if c.include?(min)
      ans -= 1
    end
    if c.include?(med)
      ans -= 1
    end
    if c.include?(max)
      ans -= 1
    end
  end
end

puts ans
