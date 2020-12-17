N, K = gets.split.map(&:to_i)

ab_max = 0 < K ? N * 2 : N * 2 + K

puts 2.upto(ab_max).sum {|i|
  ab = i
  cd = (i - K).abs
  if cd < 2
    next 0
  end

  ab_count = case
  when ab == N * 2
    1
  when N < ab
    2 * N + 1 - ab
  else
    ab - 1
  end

  cd_count = case
  when cd == N * 2
    1
  when N < cd
    2 * N + 1 - cd
  else
    cd - 1
  end

  ab_count * cd_count
}
