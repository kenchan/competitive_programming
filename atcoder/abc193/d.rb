K = gets.to_i
S = gets.chop.chop.split('').map(&:to_i)
T = gets.chop.chop.split('').map(&:to_i)

st = {}
tt = {}

1.upto(9).each do |i|
  st[i] = 0
  tt[i] = 0
end

4.times do |i|
  st[S[i]] += 1
  tt[T[i]] += 1
end

wins = 0

1.upto(9) do |t|
  next if st[t] + tt[t] == K
  ttt = tt.dup
  ttt[t] += 1

  1.upto(9) do |s|
    next if st[s] + ttt[s] == K
    sst = st.dup
    sst[s] += 1

    if sst.sum {|k, c| k * (10 ** c)} > ttt.sum {|k, c| k * (10 ** c)}
      rt = K - (st[t] + ttt[t]) + 1
      rs = K - (sst[s] + ttt[s]) + 1
      wins += (rs * rt)
    end
  end
end

puts wins.to_f / ((K * 9 - 8) * (K * 9 - 9))
