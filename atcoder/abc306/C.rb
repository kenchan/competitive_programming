N = gets.to_i
As = gets.split.map(&:to_i)

ans = N.times.inject({}) {|acc, i| acc[i + 1] = []; acc }

As.each_with_index do |a, i|
  ans[a] << i
end

puts ans.to_a.sort_by {|k, v| v[1]}.map(&:first).join(' ')
