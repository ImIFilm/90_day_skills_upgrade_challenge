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

hash.has_value("a") # czy zawiera wartość?

hash.invert # odwraca hasha tak jakby miejscami
hash = { "n" => 100, "m" => 100, "y" => 300, "d" => 200, "a" => 0 }
hash.invert   #=> {0=>"a", 100=>"m", 200=>"d", 300=>"y"}

hash.keep_if 
```

### co przećwiczyłem?
- różne zabawy z hashami https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_15/hash_exercises.rb
