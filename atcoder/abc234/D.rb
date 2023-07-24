# https://atcoder.jp/contests/abc234/tasks/abc234_d


N, K = gets.split.map(&:to_i)
Ps = gets.split.map(&:to_i)

array = Ps[0...K].sort
puts array[-K]

(N - K).times do |i|
  num = Ps[i + K]
  index = array.bsearch_index {|x| x >= num}
  if index
    array.insert(index, num)
  else
    array << num
  end
  puts array[-K]
end
