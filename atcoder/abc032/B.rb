# https://atcoder.jp/contests/abc032/tasks/abc032_b


s = gets.chomp
k = gets.to_i

if s.size < k
  puts 0
  exit
end

puts s.chars.each_cons(k).uniq.size
