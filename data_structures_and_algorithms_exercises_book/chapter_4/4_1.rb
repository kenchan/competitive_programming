N = gets.to_i

def tri(n)
  if n <= 1
     0
  elsif n == 2
    1
  else
    tri(n - 1) + tri(n - 2) + tri(n - 3)
  end
end

puts tri(N)
