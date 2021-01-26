N = gets.to_i
A = gets.split.map(&:to_i)

ans = 0

0.upto(N - 1) do |l|
  min = A[l]
  l.upto(N - 1) do |r|
    break if ans >= min * (N - l + 1)

    if A[r] < min
      min = A[r]
    end

    s = min * (r - l + 1)

    if ans < s
      ans = s
    end
  end
end

puts ans
