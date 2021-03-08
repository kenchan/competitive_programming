N = gets.to_i

def dfs(string, char)
  if string.size == N
    puts string
  else
    ('a'..char).each do |c|
      dfs(string + c, c == char ? char.succ : char)
    end
  end
end

dfs('', 'a')
