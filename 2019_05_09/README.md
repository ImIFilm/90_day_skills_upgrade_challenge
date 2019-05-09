## dzień 2.
9/05/2019
czas poświęcony na naukę: 1h
![my target](https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_09/target1.PNG)

### czego się nauczyłem?
**ogólnie o wyjątkach**
- obsługa wyjątków musi być realna, a nie jedynie umożliwiać dalsze działanie programu
- **rzucaj wyjątki wcześnie, a łap późno**, bo im wcześniej rzucisz, tym możesz podać więcej szczegółów o przyczynach błędu, a im później złapiesz, tym lepiej, bo możesz obsłużyć wiele wyjątków za pomocą jednego mechanizmu i dodatkowo jest się bliżej użytkownika, czyli można wtedy wypisać najlepszy dla niego komunikat 
- trzeba kontrolować wszystkie połaczenia do baz, zewnętrznych serwerów i otwierane pliki
- warto reagować **konkretnie** na **konkretne** rodzaje wyjątków, czyli jak plik nie został znaleziony, to można wskazać użytkownikowi co jest w folderze i poprosić o ponowne wpisanie nazwy itd.

**wyjątki w Ruby**
- podstawowy przypadek dla wyjątków:
```ruby
begin
  # Any exceptions in here... 
  1/0
rescue
  # ...will cause this code to run
  puts "Got an exception, but I'm responding intelligently!"
  do_something_intelligent()
end
```
jednak nie pozwalamy w taki sposób, by dowiedzieć się JAKI rodzaj wyjątku dostaliśmy
- wyjątki są obiektami w Ruby
- jeślichcemy dostać jakichś informacji o wyjątku wystarczy użyć
```ruby
rescue => e
```
- możemy np. zczytać **backtrace**:
```ruby
def a
  raise "boom"
end

def b
  a()
end

begin
  b()
rescue => detail
  print detail.backtrace.join("\n")
end
```
co zwróci
```
prog.rb:2:in `a'
prog.rb:6:in `b'
prog.rb:10
```
- inne ciekawe metody na exception: full_message(z kolorowaniem), inspect (klasa wyjątku i wiadomość)
- lepiej używać raise niż fail
- nie używać formy raise RuntimeError w dwuargumentowym raise, bo to jest już domyślnie rozpoznawane jako ten RuntimeEroor
- warto uzywać dwuargumentowego raise, np:
```ruby
raise SomeException, 'message'
```
- możemhy tworzyć swoje wyjątki, definiując je jak klasy, dziedziczące po StandardError:
```ruby
class PermissionDeniedError < StandardError

end

raise PermissionDeniedError.new()
```
- warto łapać wyjątki ze specyfikowaniem które łapiemy, np.
```ruby
begin
  do_something()
rescue Errno::ETIMEDOUT => e
  // This will only rescue Errno::ETIMEDOUT exceptions
end
```

do stworzenia powyższych notatek korzystałem ze stron: 
- https://www.honeybadger.io/blog/a-beginner-s-guide-to-exceptions-in-ruby/
- https://github.com/rubocop-hq/ruby-style-guide#exceptions 
- https://ruby-doc.org/core-2.5.0/Exception.html 
- http://www.apohllo.pl/texts/obiektowe/Wyj%C4%85tki.slides.html#/ 

### co przećwiczyłem?
- różne zabawy z wyjątkami https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_09/exceptions_exercises.rb
