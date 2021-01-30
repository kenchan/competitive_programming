A, B, C = gets.split.map(&:to_i)

if C == 0
  puts A > B ? 'Takahashi' : 'Aoki'
else
  puts B > A ? 'Aoki' : 'Takahashi'
end
