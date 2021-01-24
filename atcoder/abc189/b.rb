N, X = gets.split.map(&:to_i)
VP = N.times.map { gets.split.map(&:to_i) }

N.times.inject(0) do |acc, i|
  acc += VP[i][0] * VP[i][1]

  if X < acc / 100.0
    puts i + 1
    exit
  end
  acc
end

puts '-1'
