# https://atcoder.jp/contests/code-festival-2015-qualb/tasks/codefestival_2015_qualB_c


N, M = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)
Bs = gets.split.map(&:to_i)

if N < M
  puts 'NO'
  exit
end

As.sort!
Bs.sort!

ai = 0
bi = 0

bi.upto(M - 1) do |i|
  prev = ai
  ai.upto(N - 1) do |j|
    if Bs[bi] <= As[j]
      ai = j + 1
      bi = i + 1
      break
    end
  end

  if prev == ai
    puts "NO"
    exit
  end
end

puts "YES"
