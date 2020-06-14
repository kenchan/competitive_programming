N, K = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

B = Array.new(N, 0)

K.times do
  B.fill(0)
  a.each_with_index do |c, i|
    l = (i - c) < 0 ? 0 : i - c
    r = (i + c) > N - 1 ? N - 1 : i + c

    B[l] += 1
    if r + 1 < N
      B[r + 1] -= 1
    end
  end

  min = N + 1
  1.upto(N - 1) do |i|
    B[i] += B[i - 1]
    min = B[i] < min ? B[i] : min
  end
  a = B.dup

  if min == N
    break
  end
end

puts a.join(" ")
