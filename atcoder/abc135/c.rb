N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

ans = 0

0.upto(N - 1) do |i|
  if A[i] <= (B[i] || 0)
    ans += A[i]

    np = B[i] - A[i]
    n = A[i + 1] <= np ? A[i + 1] : np
    ans += n
    A[i + 1] -= n
  else
    ans += B[i]
  end
end

puts ans
