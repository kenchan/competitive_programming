# https://atcoder.jp/contests/arc145/tasks/arc145_a

N = gets.to_i
S = gets.chomp

if N == 2 && S == 'BA'
  puts 'No'
elsif S[0] == "A" && S[-1] == "B"
  puts 'No'
else
  puts 'Yes'
end
