H, W = gets.split.map(&:to_i)
Ss = Array.new(H) { gets.chomp.split('') }

snuke = %w(s n u k e)

dis = [1, -1, 0, 0, 1, 1, -1, -1]
djs = [0, 0, 1, -1, 1, -1, 1, -1]

Ss.each_with_index do |s, i|
  s.each_with_index do |c, j|
    next unless  c == 's'

    dis.each do |di|
      djs.each do |dj|
        next if i + di * 4 < 0 || H <= i + di * 4 || j + dj * 4 < 0 || W <= j + dj * 4

        words = []
        pos = []

        5.times do |count|
          words << Ss[i + di * count][j + dj * count]
          pos << [i + di * count, j + dj * count]
        end

        if words == snuke
          pos.each do |po|
            puts po.map(&:succ).join(' ')
          end
          exit
        end
      end
    end
  end
end
