# https://atcoder.jp/contests/abc314/tasks/abc314_c

class Chars
  attr_accessor :chars, :index

  def initialize()
    @chars = []
    @index = -1
  end

  def next
    c = @chars[@index]
    if @chars.size == @index + 1
      @index = 0
    else
      @index += 1
    end
    c
  end

  def push(char)
    @index += 1
    @chars << char
  end
end

N, M = gets.split.map(&:to_i)
S = gets.chomp.chars
Cs = gets.split.map(&:to_i)

chars = Cs.each.with_index.inject(Hash.new {|h, k| h[k] = Chars.new}) {|acc, (c, i)|
  acc[c].push(S[i])
  acc
}

Cs.each {|c|
  print chars[c].next
}

puts
