Q, H, S, D = gets.split.map(&:to_i)
N = gets.to_i

if N == 1
  puts [Q * 4, H * 2, S].min
  exit
end

ans = [Q * 8, H * 4, S * 2, D].min * (N / 2)
ans += [Q * 4, H * 2, S].min * (N % 2)

puts ans
