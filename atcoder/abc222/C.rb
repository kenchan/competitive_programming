# https://atcoder.jp/contests/abc222/tasks/abc222_c

N, M = gets.split.map(&:to_i)
Ass = Array.new(2 * N) { gets.chomp.chars }

rank = (2 * N).times.map {|i| [i, 0] }

M.times do |m|
  rank.each_slice(2) {|a, b|
    case [Ass[a[0]][m], Ass[b[0]][m]]
    when ['G', 'C']
      a[1] += 1
    when ['C', 'P']
      a[1] += 1
    when ['P', 'G']
      a[1] += 1
    when ['C', 'G']
      b[1] += 1
    when ['P', 'C']
      b[1] += 1
    when ['G', 'P']
      b[1] += 1
    else
      # あいこ
    end
  }

  rank.sort! do |a ,b|
    if (b[1] <=> a[1]) != 0
      b[1] <=> a[1]
    else
      a[0] <=> b[0]
    end
  end
end

puts rank.map {|r| r[0] + 1 }
