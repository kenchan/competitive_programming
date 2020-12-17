A, B, N = gets.split.map(&:to_i)

max = -1

(N).downto(1) {|i|
  n = (A.to_f * i / B).floor - A * (i.to_f / B).floor
  if n < max
    puts max
    exit
  end
  max = n
}
