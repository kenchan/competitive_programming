# https://atcoder.jp/contests/abc302/tasks/abc302_c

N, M = gets.split.map(&:to_i)
ss = []
N.times do
  ss << gets.chomp.split('')
end

ss.permutation(N) do |ps|
  ans = ps.each_cons(2).all? do |pair|
    d = 0
    M.times do |i|
      d += 1 if pair[0][i] != pair[1][i]
    end

    d == 1
  end

  if ans
    puts "Yes"
    exit
  end
end

puts "No"
