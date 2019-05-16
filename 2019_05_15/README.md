## dzień 8.
15/05/2019
czas poświęcony na naukę: 1h
![my target](https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_15/target1.PNG)

### czego się nauczyłem?
**metody dla Hash**
- tworzenie:
```ruby
hash = { "apple" => 10, "plum" => 6 }
hash = { :apple => 10, :plum => 6 }
hash = { apple: 10, plum: 6 }
hash = Hash.new
hash["pear"] = 9
hash = Hash.new(0) # inicjalizacja z domyślną wartością
hash.default = 0 # inny sposób ustawienia domyślnej wartości
```

- można porównywać czy hash jest podzbiorem innego (albo czy jest podzbiorem lub równym):
```ruby
h1 = {a:1, b:2}
h2 = {a:1, b:2, c:3}
h1 < h2 #=> true
h2 < h1 #=> false
h1 < h1 #=> false
h1 <= h2 #=> true
h2 <= h1 #=> false
h1 <= h1 #=> true
```

- można usuwać przez
```ruby
hash.delete("z") #=> nil
hash.delete("z") { |el| "#{el} not found" } #=> "z not found"
h.delete_if {|key, value| key >= "b" }
```

- warto znać te metody:
```ruby
hash.clear # usuwa zawartość hasha

hash.compact # usuwa pary, których wartość jest nilem

hash = { foo: {bar: {baz: 1}}}
hash.dig(:foo, :bar, :baz) #=> 1
hash.dig(:foo, :zot, :xyz) #=> nil
hash = { foo: [10, 11, 12] }
hash.dig(:foo, 1) #=> 11
hash.dig(:foo, 1, 0) #=> TypeError: Integer does not have #dig method
hash.dig(:foo, :bar) #=> TypeError: no implicit conversion of Symbol into Integer

hash.fetch("a") # zwraca wartość od klucza

hash.fetch_values("a", "b") # zwraca tablicę wartości od podanych kluczy, albo zwraca KeyError jak nie ma klucza

# hash.filter = hash.select
hash.select {|k,v| v < 200}  #=> {"a" => 100}

hash =  {1=> "one", 2 => [2,"two"], 3 => "three"}
hash.flatten    # => [1, "one", 2, [2, "two"], 3, "three"]
hash.flatten(2) # => [1, "one", 2, 2, "two", 3, "three"]

hash.has_key?("a") # czy zawiera klucz?

hash.has_value?("a") # czy zawiera wartość?

hash.invert # odwraca hasha tak jakby miejscami
hash = { "n" => 100, "m" => 100, "y" => 300, "d" => 200, "a" => 0 }
hash.invert   #=> {0=>"a", 100=>"m", 200=>"d", 300=>"y"}

hash.keys #zwraca tavblicę z kluczami

hash.length # zwraca ilość par klucz - wartość

hash.member?(key) # mówi czy key jest obecny w hashu

h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 246, "c" => 300 }
h3 = { "b" => 357, "d" => 400 }
h1.merge #=> {"a"=>100, "b"=>200}
h1.merge(h2) #=> {"a"=>100, "b"=>246, "c"=>300}
h1.merge(h2, h3) #=> {"a"=>100, "b"=>357, "c"=>300, "d"=>400}
h1.merge(h2) {|key, oldval, newval| newval - oldval} #=> {"a"=>100, "b"=>46,  "c"=>300}

hash = { "a" => 100, "b" => 200, "c" => 300 }
hash.reject {|k,v| k < "b"}  #=> {"b" => 200, "c" => 300}
hash.reject {|k,v| v > 100}  #=> {"a" => 100}

hash.replace(other hash) # podmiana

hash.slice(:a) # zwraca tylko hasha zawierającego określone klucze

h = { a: 1, b: 2, c: 3 }
h.transform_keys {|k| k.to_s } #=> { "a" => 1, "b" => 2, "c" => 3 }
h.transform_keys(&:to_sym) #=> { a: 1, b: 2, c: 3 }

h = { a: 1, b: 2, c: 3 }
h.transform_values {|v| v * v + 1 } #=> { a: 2, b: 5, c: 10 }
h.transform_values(&:to_s) #=> { a: "1", b: "2", c: "3" }

hash.values #zwraca wszystkie wartości z hasha

hash.values_at(key1, key2) #zwraca wartości dla podanych kluczy
```

### co przećwiczyłem?
- różne zabawy z hashami https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_15/hash_exercises.rb
