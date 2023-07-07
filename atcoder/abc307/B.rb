# https://atcoder.jp/contests/abc307/tasks/abc307_b


N = gets.to_i
Ss = Array.new(N) { gets.chomp }

N.times do |i|
  (i + 1).upto(N - 1) do |j|
    if (Ss[i] + Ss[j]) == (Ss[i] + Ss[j]).reverse || (Ss[j] + Ss[i]) == (Ss[j] + Ss[i]).reverse
      puts "Yes"
      exit
    end
  end
end

puts 'No'
