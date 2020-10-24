H, W = gets.split.map(&:to_i)
PX, PY, QX, QY = gets.split.map(&:to_i)

S = H.times.map { gets.chomp.split('') }

routes = H.times.map { W.times.map { [] } }

current = [PX - 1, PY - 1]
direction = 'U'
routes[current[0]][current[1]] << 'U'
ans = 0

loop do
  case
  when direction == 'U'
    case
    when S[current[0]][current[1] - 1] == '.'
      current[1] -= 1
      direction = 'L'
    when S[current[0] - 1][current[1]] == '.'
      current[0] -= 1
      direction = 'U'
    when S[current[0]][current[1] + 1] == '.'
      current[1] += 1
      direction = 'R'
    when S[current[0] + 1][current[1]] == '.'
      current[0] += 1
      direction = 'D'
    end
  when direction == 'L'
    case
    when S[current[0] + 1][current[1]] == '.'
      current[0] += 1
      direction = 'D'
    when S[current[0]][current[1] - 1] == '.'
      current[1] -= 1
      direction = 'L'
    when S[current[0] - 1][current[1]] == '.'
      current[0] -= 1
      direction = 'U'
    when S[current[0]][current[1] + 1] == '.'
      current[1] += 1
      direction = 'R'
    end
  when direction == 'R'
    case
    when S[current[0] - 1][current[1]] == '.'
      current[0] -= 1
      direction = 'U'
    when S[current[0]][current[1] + 1] == '.'
      current[1] += 1
      direction = 'R'
    when S[current[0] + 1][current[1]] == '.'
      current[0] += 1
      direction = 'D'
    when S[current[0]][current[1] - 1] == '.'
      current[1] -= 1
      direction = 'L'
    end
  when direction == 'D'
    case
    when S[current[0]][current[1] + 1] == '.'
      current[1] += 1
      direction = 'R'
    when S[current[0] + 1][current[1]] == '.'
      current[0] += 1
      direction = 'D'
    when S[current[0]][current[1] - 1] == '.'
      current[1] -= 1
      direction = 'L'
    when S[current[0] - 1][current[1]] == '.'
      current[0] -= 1
      direction = 'U'
    end
  end

  ans += 1

  break if current == [QX - 1, QY - 1]

  if routes[current[0]][current[1]].include?(direction)
    ans = -1
    break
  else
    routes[current[0]][current[1]] << direction
  end
end

puts ans
