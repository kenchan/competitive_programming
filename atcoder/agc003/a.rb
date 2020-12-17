S = gets.split('')

t = S.uniq.tally

puts t["N"] == t["S"] && t["W"] == t["E"] ? 'Yes' : 'No'
