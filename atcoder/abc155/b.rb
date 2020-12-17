N = gets.to_i
A = gets.split.map(&:to_i)

bool = A.all? {|a|
  if a.odd?
    true
  else
    a % 3 == 0 || a % 5 == 0
  end
}

puts bool ? 'APPROVED' : 'DENIED'
