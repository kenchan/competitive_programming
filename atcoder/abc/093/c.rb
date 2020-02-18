A, B, C = gets.split.map(&:to_i)

queue = [[A, B, C, 0]]
PATTERN = [[1,1,0],[1,0,1],[0,1,1],[2,0,0],[0,2,0],[0,0,2]]

loop do
  (a, b, c, count) = *queue.shift
  PATTERN.each do |pat|
    na = a + pat[0]
    nb = b + pat[1]
    nc = c + pat[2]
    ncount = count + 1
    if na == nb && nb == nc
      puts ncount
      exit
    end
    queue << [na, nb, nc, ncount]
  end
end
