## dzień 7.
14/05/2019
czas poświęcony na naukę: 1h
![my target](https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_14/target1.PNG)

### czego się nauczyłem?
**metody dla Array**
- tworzenie:
```ruby
arr = []
arr = Array.new
arr = Array.new(3) #=> [nil, nil, nil]
arr = Array.new(3, true) #=> [true, true, true]
arr = Array.new(3) { Hash.new } #=> [{}, {}, {}]
arr = Array.new(3) { |i| i.to_s } #=> ["0", "1", "2"]
```

- wyświetlanie elemtnów
```ruby
arr = [1, 2, 3, 4, 5, 6]
arr[2]    #=> 3
arr[100]  #=> nil
arr[-3]   #=> 4
arr[2, 3] #=> [3, 4, 5]
arr[1..4] #=> [2, 3, 4, 5]
arr[1..-3] #=> [2, 3, 4]
arr.at(0) #=> 1
arr.fetch(100) #=> IndexError: index 100 outside of array bounds: -6...6
arr.fetch(100, "oops") #=> "oops"
arr.first #=> 1
arr.last #=> 6
arr.take(3) #=> [1, 2, 3]
arr.drop(2) #=> [3, 4, 5, 6]
```

- dodawanie elelementów
```ruby
arr.push(5)
arr << 5
arr.unshift(0) # dodaje na początku
arr.insert(3, 'appple') # dodaje na trzeciej pozycji
arr.insert(3, 'orange', 'pear', 'grapefruit') # dodaje od trzeciej pozycji
```

- usuwanie elementów
```ruby
arr.pop # usuwa ostatni element
arr.shift # usuwa pierwszy element
arr.delete_at(2) # usuwa element na pozycji drugiej
arr.delete(2) # znajduje i usuwa wskazany element
arr.compact! # usuwa nile z tablicy
arr.uniq! # usuwa wartości powtarzające się
arr.clear # usuwa wszystko
```

- iterowanie po elementach
```ruby
arr.each { ... }
arr.reverse_each { ... }
arr.map { ... }
arr.select { |a| a > 3 } # non-destructive
arr.reject { |a| a < 3 } # non-destructive
arr.drop_while { |a| a < 4 } # non-destructive
arr.select! { |a| a > 3 } # destructive
arr.reject! { |a| a < 3 } # destructive
arr.delete_if { |a| a < 4 } # destructive
arr.keep_if { |a| a < 4 } # destructive
```

- operatory
```ruby
[ 1, 1, 3, 5 ] & [ 3, 2, 1 ] #=> [ 1, 3 ]
[ "a", "b", "c" ] | [ "c", "d", "a" ]    #=> [ "a", "b", "c", "d" ]
[ 1, 2, 3 ] * 3  #=> [ 1, 2, 3, 1, 2, 3, 1, 2, 3 ]
[ 1, 2, 3 ] * ","  #=> "1,2,3"
[ 1, 2, 3 ] + [ 4, 5 ] #=> [ 1, 2, 3, 4, 5 ]
[ 1, 1, 2, 2, 3, 3, 4, 5 ] - [ 1, 2, 4 ] #=>  [ 3, 3, 5 ]
a << "c" << "d" << [ 3, 4 ] #=>  [ 1, 2, "c", "d", [ 3, 4 ] ]
[ "a", "c" ]    == [ "a", "c", 7 ] #=> false
```
- inne warte poznania metody:
```ruby
arr.bsearch { |x| x >=   4 } #szukanie binarne w O(log n)

a = [1, 2, 3, 4]
a.combination(3).to_a  #=> [[1,2,3],[1,2,4],[1,3,4],[2,3,4]] wszystkie kombinacje w tablicach o wielkości n

[ "a" ].concat( ["b"], ["c", "d"] ) #=> [ "a", "b", "c", "d" ]

ary.count # zwraca ilość elelemtów
ary.count(2) # zwraca ilość konkretnych wartości
ary.count { |x| x%2 == 0 } # zwraca ilość elementów dla których blok zwraca true

a.cycle(2) { |x| puts x } # zapętla się n razy

a = [[1, [2, 3]]]
a.dig(0, 1, 1) #=> 3
a.dig(1, 2, 3) #=> nil
a.dig(0, 0, 0) #=> TypeError: Integer does not have #dig method
[42, {foo: :bar}].dig(1, :foo)    #=> :bar

a = [ "a", "b", "c", "d" ]
a.fill("x") #=> ["x", "x", "x", "x"]
a.fill("z", 2, 2) #=> ["x", "x", "z", "z"]
a.fill("y", 0..1) #=> ["y", "y", "z", "z"]
a.fill { |i| i*i } #=> [0, 1, 4, 9]
a.fill(-2) { |i| i*i*i } #=> [0, 1, 8, 27]

a.index("b") # zwraca indeks elementu

a.flatten(level) # spłaszcza zagnieżdżone tablice
a = [ 1, 2, [3, [4, 5] ] ]
a.flatten(1) #=> [1, 2, 3, [4, 5]]

a.include?("b") # mówi czy element znajduje się w tabeli

a.join(separator) #tworzy stringa z wartościami tabeli, oddzielonymi separatorem
[ "a", "b", "c" ].join("-")   #=> "a-b-c"

a.length # zwraca długość

ary = %w(albatross dog horse)
ary.max { |a, b| a.length <=> b.length } #=> "albatross"
ary.max(2) {|a, b| a.length <=> b.length } #=> ["albatross", "horse"]

ary.min { |a, b| a.length <=> b.length }  #=> "dog"

a = [1, 2, 3]
a.permutation.to_a #=> [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

[1,2,3].product([4,5])     #=> [[1,4],[1,5],[2,4],[2,5],[3,4],[3,5]]

a = [ "a", "b", "b", "b", "c" ]
a.rindex("b") #=> 3 (indeks oststniego wystąpienia)

a = [ "a", "b", "c", "d" ]
a.rotate #=> ["b", "c", "d", "a"]
a.rotate(2) #=> ["c", "d", "a", "b"]

a.sample #=> "b" (zwraca jakiś losowy elelemtn)
a.sample(2) #=> ["b", "c"] (losowych n elementów)

a.shuffle # przemieszanie elementów

ary = [ "d", "a", "e", "c", "b" ]
ary.sort #=> ["a", "b", "c", "d", "e"]
ary.sort { |a, b| b <=> a } #=> ["e", "d", "c", "b", "a"]

[3, 5.5].sum #=> 8.5
[2.5, 3.0].sum(0.0) {|e| e * e } #=> 15.25 (sumuje, ale najpierw wykonuje operację w bloku)

[[:foo, :bar], [1, 2]].to_h #=> {:foo => :bar, 1 => 2}

a = [[1,2], [3,4], [5,6]]
a.transpose #=> [[1, 3, 5], [2, 4, 6]]

a = %w{ a b c d e f }
a.values_at(1, 3, 5) # => ["b", "d", "f"]

```

### co przećwiczyłem?
- różne zabawy z tablicami https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_14/array_exercises.rb
