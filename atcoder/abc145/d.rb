gx, gy = gets.split.map(&:to_i)

w = [[1, 2], [2, 1]]

c = 0

queue = [[0, 0]]

while current = queue.shift
  w.each do |(x, y)|
    n = [current[0] + x, current[1] + y]
    if n[0] == gx && n[1] == gy
      c += 1
    elsif n[0] < gx && n[1] < gy
      queue << n
    else
      # notiong
    end
  end
end

puts c
