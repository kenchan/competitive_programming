H, W, C, Q = gets.split.map(&:to_i)

h = {}
w = {}
ans = Array.new(C, 0)

tnc = []

Q.times do |i|
  tnc << gets.split.map(&:to_i)
end

tnc.reverse.each do |t, n, c|
  if t == 1
    next if w[n]
    ans[c - 1] += W - h.size
    w[n] = true
  else
    next if h[n]
    ans[c - 1] += H - w.size
    h[n] = true
  end
end

puts ans.join(' ')
