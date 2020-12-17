N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

minus, plus = A.partition {|i| i < 0 }

minus.sort!
plus.sort!

index = 1

if 0 < minus.size && 0 < plus.size
  minus.each do |i|
    
  end
end
