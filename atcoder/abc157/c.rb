N, M = gets.split.map(&:to_i)
sc = M.times.map { gets.split.map(&:to_i) }

ans = []

sc.each do |s, c|
  if ans[s - 1] == nil || ans[s - 1] == c
    ans[s - 1] = c
  else
    puts '-1'
    exit
  end
end

if ans[0] == 0 && N != 1
  puts '-1'
  exit
end

0.upto(N - 1) do |i|
  if ans[i]
    print ans[i]
  else
    if i == 0
      if N == 1
        print '0'
      else
        print '1'
      end
    else
      print '0'
    end
  end
end

print "\n"
