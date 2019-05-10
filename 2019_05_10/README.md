## dzień 3.
10/05/2019
czas poświęcony na naukę: 1h
![my target](https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_10/target1.PNG)

### czego się nauczyłem?
**podstawowe typy danych**
*(bardziej szczegółowe opisy poszczególnych typów będą się pojawiały w kolejnych dniach w osobnych wpisach)*
- w Ruby możemy wyróżnić trzy grupy typów danych: podstawowe, wbudowane i pozostałe
- każda z wartości typów (niezależnie od grupy) jest **obiektem**
- składnia języka wspiera tworzenie obiektów należących do typów podstawowych, czyli np. stringi nie tworzymy przez String.new("abc") tylko po prostu piszemy "abc"
- typy wbudowane to takie, które są już w Ruby i nie potrzeba dołącząć dodatkowych bibliotek, jak np. Time
- typy pozostałe to takie, które należy dołączyć w bibliotekach

**liczby**
- liczby typu **Fixnum** - operacje na nich wykonywane są sprzętowo; jeśli wynik operacji przekracza ich zakres, następuje automatyczna konwersja do Bignum (podobnie w drugą stronę w przypadku gdy wartość operacji na Bignumach zmieści się w zakresie Fixnuma)
- operatory matematyczne zachowują się zgodnie z naturalnymi priorytetami
- możemy nadpisywać operatory np. +, -, / do klas, nie będących liczbami
- w Rails jest np. bardzo ciekawa opcja:
```ruby
1.hour + 5.minutes
#=> 3900
```

**przedziały**
- zakresy możemy definiować na dwa sposoby:
```ruby
(1..10)
(1...10)
```
jeśli są dwie kropki, wartość górna należy do przedziału, a dla trzech nie

**stringi**
- możemy je zapisywać w pojedynczych lub podwójnych nawiasach, z tym że dla 'Ruby' napis jest traktowany literalnie, a dla "Ruby" możemy dokonywać podstawień
- podstawienia wykonujemy jako
```ruby
name = "John"
puts "#{name}, hello!"
```
- długie napisy możemy zapisywać jako
```ruby
hello = <<END
  hello hello hello hi
  hi hello hi hello hi
  hi hi hi hi hi hi hi
END
```
- stringi są modyfikowalne, czyli modyfikacja nie powoduje zmiany identyfikatora = **wydajność**

**symbole**
- ich definicja to nazwa poprzedzona dwukropkiem
- w odróżnieniu od Stringów, dwa symbole o tej samej nazwie są zawsze te same
```ruby
s1 = :abc
s2 = :abc
str1 = "Abc" 
str2 = "Abc" 
s1.object_id == s2.object_id
#=> true
str1.object_id == str2.object_id
#=> false
```
- często wykorzystuje się symbole jako klucze np. hashy, ponieważ jeśli użyjemy do tego stringów, to zmieniając gdzieś w programie danego stringa, jego wartość zostanie również zmieniona w hashu, a wartość dostępna będzie pod starą nazwą klucza. Oprócz tego, użycie symboli jako kluczy jest bardziej wydajne
```ruby
key = "abc" 
histogram[key] = 10
key.sub!("b", "a")
#=> "Jabłka" 
histogram["aac"]
#=> nil !!!
histogram["abc"]
#=> 10
key
#=> "Jabłka"
```

**wyrażenia regularne**
- wyrażenia regularne są obiektami
- możemy ich używać np. tak:
```ruby
/hay/ =~ 'haystack'   #=> 0
/y/.match('haystack') #=> #<MatchData "y">
```

**tablice**
- tworzymy np. przez zwykłe a = []
- dostęp do elementów tablic można mieć przez ujemne indeksy (dostaniemy wyniki jakby "od końca")
- tablice można indeksowac zakresami
- w tablicach można przechowywać inne tablice = wielowymiarowość
- w tablicach można przechowywać elementy różnych typów

**hashe**
- hashe to tablice indeksowane dowolnymi wartościami
```ruby
hash = { "one" => 1, "two" => 2, "three" => 3 }
hash["one"]
#=> 1
hash["four"] 
#=> nil
hash["four"] = 4
hash["four"]
#=> 4
```
- dla wartości, której nie ma w hashu domyślnie zwracane jest nil, może być to zmienione jeśli w konstrukltorze podamy jakąś wartość, np.
```ruby
ha = Hash.new(0)
ha["abc"]
#=> 0
ha["abc"] += 1
ha["abc"]
#=> 1
```
- często jako kluczy stosuje się symbole

**wartości logiczne**
- wartość logiczną false posiada false i nil
- możemy sprawdzić czy coś jesty nilem przez metodę nil?


### co przećwiczyłem?
- różne zabawy z keyword arguments https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_08/data_types_exercises.rb
