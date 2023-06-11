A, B, K = gets.split.map(&:to_i)

gcd = A.gcd(B)

c = 0

gcd.downto(0) do |i|
  c += 1 if A % i == 0 && B % i == 0

  if c == K
    puts i
    exit
  end
end
