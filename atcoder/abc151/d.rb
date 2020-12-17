h, w = gets.split().map(&:to_i)

s = h.times.inject([]) {|acc|
  acc << gets.chomp.split(//)
}

di = [-1, 0, 1, 0]
dj = [0, -1, 0, 1]

max = 0

h.times.each do |si|
  w.times.each do |sj|
    # スタート位置を決める
    next if s[si][sj] == '#'
    dd = {}

    queue = []
    queue << [si, sj]
    dd[[si, sj]] = 0

    while(!queue.empty?)
      d = queue.shift
      4.times do |x|
        ni = d[0] + di[x]
        nj = d[1] + dj[x]

        if ((0 <= ni && ni < h) && (0 <= nj && nj < w)) && s[ni][nj] != '#'
          unless dd[[ni, nj]]
            dd[[ni, nj]] = dd[d] + 1
            queue <<[ni, nj]
          end
        end
      end
    end
    max = [dd.values.max, max].max
  end
end

puts max
