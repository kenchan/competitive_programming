N = gets.to_i
CSF = (N - 1).times.map { gets.split.map(&:to_i) }

0.upto(N - 1) do |i|
  t = 0
  i.upto(N - 2) do |j|
    if t < CSF[j][1]
      t = CSF[j][1]
    else
      if t % CSF[j][2] != 0
        t += CSF[j][2] - t % CSF[j][2]
      end
    end

    t += CSF[j][0]
  end
  puts t
end
