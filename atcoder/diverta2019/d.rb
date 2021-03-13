N = gets.to_i

def divisors(n)
  1.upto(Math.sqrt(n).floor).inject([]) do |acc, i|
    if n % i == 0
      if n / i == i
        acc + [i]
      else
        acc + [i, n / i]
      end
    else
      acc
    end
  end
end

puts divisors(N).map {|i| i - 1 }.select {|i| i > 0 && N / i == N % i }.sum
