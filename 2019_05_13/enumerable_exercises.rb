arr = [-5, 10, 0, 15, -2]
# puts arr.select { |i| i.positive? }
# puts arr.any?(&:positive?)
# puts arr.none?(&:positive?)
# puts arr.all?(&:odd?)

p arr
arr.collect!{ |n| n**2 }
p arr
arr.map!{ |n| n**0.5 }.map!(&:to_i)
p arr
arr.reject!(&:even?)
p arr
p arr.detect(&:odd?)
p arr.find(&:odd?)

puts
regex = /aga/
arr2=["agunia", "agi", "agata", "aga", "agnieszka", "agniesiora"]
p arr2
agas = arr2.grep(regex)
p agas

def short_name? (name)
  if name.length<4
    true
  else
    false
  end
end

agas = arr2.partition{|a| short_name?(a)}
p agas