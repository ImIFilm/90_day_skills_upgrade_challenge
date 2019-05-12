## dzień 5.
12/05/2019
czas poświęcony na naukę: 1h
![my target](https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_12/target1.PNG)

### czego się nauczyłem?
**pliki**
- przez File.open("source") dostajemy obiekt File, ale nie jego zawartość
- możemy czytać plik do stringa w taki sposób:
```ruby
file = File.open("source.txt")
file_data = file.read
```
- lub każdą linię do osobnego rekordu w tabeli, usuwając znaki nowej linii, np. tak:
```ruby
file_data = file.readlines.map(&:chomp)
```
- powinniśmy pamiętać, by zamykać pliki poprzez file.close
- poprzez File.read od razu zczytujemy dane i nie musimy pamiętać o zamykaniu pliku
```ruby
file_data = File.read("souce.txt").split
```
- do duzych plików warto rozważyć metodę z foreach:
```ruby
File.foreach("users.txt") { |line| puts line }
```
- przez zapisywanie możemy nadpisywać lub dopisywać do pliku, robimy to przez
```ruby
File.open("log.txt", "w") { |f| f.write "#{Time.now} - User logged in\n" } # nadpisanie
File.write("log.txt", "#{Time.now} - User logged in\n") # krocej napisanie
File.open("log.txt", "a") { |f| f.write "#{Time.now} - User logged in\n" } # dopisanie
File.write("log.txt", "#{Time.now} - User logged in\n", mode: "a") # krocej dopisanie
```
- metody do plików, które warto znać to np. rename, size, exists?, extname, basename, dirname, directory?, birthname

### co przećwiczyłem?
- różne zabawy z keyword arguments https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_12/files_exercises.rb
