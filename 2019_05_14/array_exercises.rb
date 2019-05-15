arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p arr.bsearch { |x| x >=   4 }
puts
p arr.combination(8).to_a  
puts
p arr.concat( [10, 11, 12] )
puts
p arr.count { |x| x%3==0 }
puts
p arr.cycle(2) { |x| p x }
puts
p arr.fill("x")
puts
p arr.values_at(1, 3, 5)
puts
p arr.join("-")
puts
p arr.length
puts
arr = %w(leniwiec piesek kot)
p arr.max { |a, b| a.length <=> b.length } 
p arr.max(2) {|a, b| a.length <=> b.length }
p arr.min { |a, b| a.length <=> b.length }
puts
p arr.permutation.to_a
puts
p arr.product(["a", "s"])
puts
p arr.rotate 
puts
p arr.sample
p arr.sample(2)
puts
p arr.shuffle 
p arr.shuffle 
p arr.shuffle 
puts
p ary = [ "d", "a", "e", "c", "b" ]
p ary.sort
p ary.sort { |a, b| b <=> a }
