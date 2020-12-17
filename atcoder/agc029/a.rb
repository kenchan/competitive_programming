S = gets.chomp

w_count = 0
ans = 0

0.upto(S.size - 1) do |i|
  next if S[i] == 'B'
  ans += i - w_count
  w_count += 1
end

puts ans

__END__

最終系は必ず「WWW....BBB」という形になるので、n番目のWは左からn番目の場所に来る。
Wの個数を集計しながら、それと現在の位置の差を合計していくと答えになる。
