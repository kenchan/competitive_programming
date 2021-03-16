H, W = gets.split.map(&:to_i)
N = gets.to_i
A = gets.split.map(&:to_i)

aa = A.each_with_index.inject([]) {|acc, (a, i)| acc + [(i + 1)] * a }

H.times do |h|
  W.times do |w|
    if h.even?
      w2 = w
    else
      w2 = W - w - 1
    end
    print aa[h * W + w2]

    if w != W
      print ' '
    end
  end

  print "\n"
end
