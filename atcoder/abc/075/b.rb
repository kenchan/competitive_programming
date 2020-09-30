H, W = gets.split.map(&:to_i)

S = H.times.map { gets.split('') }

0.upto(H - 1) do |i|
  0.upto(W - 1) do |j|
    if S[i][j] == '#'
      print S[i][j]
      next
    end

    num = 0
    -1.upto(1) do |x|
      -1.upto(1) do |y|
        if (0 <= i + x && i + x < H) && (0 <= j + y && j + y < W)
          num += 1 if S[i + x][j + y] == '#'
        end
      end
    end

    print num
  end

  print "\n"
end
