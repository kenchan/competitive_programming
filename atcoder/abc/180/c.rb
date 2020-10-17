require 'set'
N = gets.to_i

ans = 1.upto(Math.sqrt(N).to_i).inject(Set.new) do |set, i|
  if N % i == 0
    set << i
    set << N / i
  end
  set
end

puts ans.sort
