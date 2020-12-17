N = gets.to_i
an = gets.split.map(&:to_i)

if an.all? {|a| a % 2 == 0}
  puts 'Yes'
  exit
end

array1, array2 = an.partition {|a| a % 4 == 0 }

array3, array4 = array2.partition {|a| a.even? }

if array3.size.odd?
  array4 << 2
end

if an.size.odd?
  puts array4.size <= (array1.size + 1) ? 'Yes' : 'No'
else
  puts array4.size <= array1.size ? 'Yes' : 'No'
end
