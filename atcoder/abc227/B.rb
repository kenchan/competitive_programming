# https://atcoder.jp/contests/abc227/tasks/abc227_b

def solve(s)
  1.upto(s) {|a|
    1.upto(s) {|b|
      if 4 * a * b + 3 * a + 3 * b == s
        return true
      elsif 4 * a * b + 3 * a + 3 * b > s
        break
      end
    }
  }
  return false
end

N = gets.to_i
Ss = gets.split.map(&:to_i)

puts Ss.reject {|s| solve(s) }.count
