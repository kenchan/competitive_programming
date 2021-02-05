N = gets.to_i
S = gets.chomp.split('')

ans = 0

0.upto(999).count {|i|
  s = '%03d' % i
  nums = s.split('')
  ni = 0

  S.each {|s|
    if nums[ni] == s
      ni += 1
    end
    if ni == 3
      ans += 1
      break
    end
  }
}
puts ans
