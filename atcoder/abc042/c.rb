N, K = gets.split.map(&:to_i)
D = gets.split

re = /(#{D.join("|")})/

N.upto(100000) do |n|
  if n.to_s !~ re
    puts n
    exit
  end
end
