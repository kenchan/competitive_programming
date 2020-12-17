A, B, C, D = gets.split('').map(&:to_i)

%w(+ -).repeated_permutation(3) do |op1, op2, op3|
  if A.send(op1, B).send(op2, C).send(op3, D) == 7
    puts [A, op1, B, op2, C, op3, D, '=7'].join
    exit
  end
end
