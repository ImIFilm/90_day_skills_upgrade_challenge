hash = { apple: 10, plum: 6 }
hash.default = 0
puts hash["apple_pie"]
hash.delete("apple")
p hash
p hash.delete("apple_pie") { |el| "#{el} not found" }
p hash.clear
hash[:apple] = 11
hash[:banana] = 4
hash[:pear] = nil
p hash
hash.compact!
p hash
puts

hash2 = { foo: {bar: {baz: 1}}}
p hash2.dig(:foo, :bar, :baz)
p hash2.dig(:foo, :zot, :xyz)
p hash2.dig(:foo, 1, 0)
puts

p hash.fetch(:banana)
p hash.fetch_values(:apple, :banana)
p hash.select {|k,v| v < 10}

hash =  {1=> "one", 2 => [2,"two"], 3 => "three"}
p hash.flatten 
p hash.flatten(2)
p hash.flatten(10)
puts

p hash.has_key?(1)
p hash.has_value?("a")
puts

p hash
p hash.invert

p hash.keys
p hash.length
p hash.member?(1)
puts

h1 = { "a" => 100, "b" => 200 }
p hash.merge(h1)
p hash.transform_values! {|k| k.to_s } #=> { "a" => 1, "b" => 2, "c" => 3 }