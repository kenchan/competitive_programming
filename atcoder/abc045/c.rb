S = gets.chomp.each_char.to_a

puts (1 << (S.size - 1)).times.inject(0) {|acc, bits|
  array = S.size.times.with_object([]) {|i, a|
    a << S[i]
    if 1 == bits >> i & 1
      a << '+'
    end
  }

  acc + eval(array.join(''))
}
