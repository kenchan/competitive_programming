# https://atcoder.jp/contests/abc314/tasks/abc314_b


N = gets.to_i
As = N.times.inject([]) {|acc, i|
  gets
  a = gets.split.map(&:to_i)
  acc << [i + 1, a]
}
X = gets.to_i

ans = As.select {|c, a| a.include?(X) }.sort_by {|c, a|
  a.size
}

if ans == []
  puts 0
  puts
  exit
end

min = ans.first[1].size

ans.select! {|c, a| a.size == min }

puts ans.size
puts ans.map(&:first).join(' ')
