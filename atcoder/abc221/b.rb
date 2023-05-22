s = gets.chomp.split("")
t = gets.chomp.split("")

swap = false

(s.size - 1).times do |i|
  if s[i] != t[i] && s[i+1] != t[i+1]
    tmp = s[i + 1]
    s[i + 1] = s[i]
    s[i] = tmp
    break
  end
end

puts s == t ? 'Yes' : 'No'
