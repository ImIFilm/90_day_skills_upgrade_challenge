## dzień 2.
9/05/2019
czas poświęcony na naukę: 1h
![my target](https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_09/target1.PNG)

### czego się nauczyłem?
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
- 
- lepiej używać raise niż fail
- nie używać formy raise RuntimeError w dwuargumentowym raise, bo to jest już domyślnie rozpoznawane jako ten RuntimeEroor
- warto uzywać dwuargumentowego raise, np:
```ruby
raise SomeException, 'message'
```
-

### co przećwiczyłem?
- różne zabawy z keyword arguments https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_09/exceptions_exercises.rb
