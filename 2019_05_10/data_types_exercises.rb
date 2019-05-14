require 'time'

# zakres Fixnum
# puts "1_000_000.class:"
# puts 1_000_000.class
# puts
# puts "1_000_000_000.class:"
# puts 1_000_000_000.class
# puts
# puts "1_000_000_000.15.class:"
# puts 1_000_000_000.15.class
# puts
# puts "Integer.sqrt(10**46) "
# puts 10**46

# puts (10..20).step(2).to_a

puts "SUNDAYS IN NEAREST MONTH:"
t1 = DateTime.now
t2 = DateTime.now + 30
next_month = t1..t2
puts next_month.select(&:sunday?).map(&:day)
puts

puts "MY DOG:"
my_dog = "mmisiek"
hash = Hash.new(2)
hash[my_dog]=1
# puts my_dog.object_id
puts hash[my_dog]
my_dog = "Misiek"
#puts my_dog.object_id
puts hash[my_dog]
# puts hash.size
puts 

puts "ARRAY DIG:"
array_of_points = [[1, 2], [4, 5], [1, 1]]
puts array_of_points[8]
puts array_of_points[1][1]
puts array_of_points[1][8]
puts array_of_points.dig(1, 8)
# puts array_of_points[11][8]
puts array_of_points.dig(11, 8)

puts "HASH DIG:"
h = { foo: {bar: {baz: 1}}}
puts h.dig(:foo, :bar, :baz)
puts h.dig(:foo, :zot)