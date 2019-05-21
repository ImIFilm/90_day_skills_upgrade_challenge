## dzień 13.
20/05/2019
czas poświęcony na naukę: 1h
![my target](https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_20/target1.PNG)

### co zrobiłem?
dzisiejszy dzień był przeznaczony na powtórtkę materiału z ostatnich 12 dni.

__na co zwracać uwagę?__
- krótka i przejrzysta instrukcja warunkowa:
```ruby
result = some_condition ? something : something_else
```
- zamiast if not lepiej używać
```ruby
unless
```
- lepiej nie używać nawiasów przy warunku z if
- nieskończone pętle robi się przez
```ruby
 loop do
    do_something
  end
```
- wyjątki w Ruby łapiemy przez:
```ruby
begin
  # Any exceptions in here... 
  1/0
rescue => e
  # ...will cause this code to run
  puts "Got an exception, but I'm responding intelligently!"
  e.do_something_intelligent()
end

# with exception specification
begin
  do_something()
rescue Errno::ETIMEDOUT => e
  // This will only rescue Errno::ETIMEDOUT exceptions
end
```
- często wykorzystuje się symbole jako klucze np. hashy, ponieważ jeśli użyjemy do tego stringów, to zmieniając gdzieś w programie danego stringa, jego wartość zostanie również zmieniona w hashu, a wartość dostępna będzie pod starą nazwą klucza. Oprócz tego, użycie symboli jako kluczy jest bardziej wydajne

- tablice można indeksowac zakresami
- w tablicach można przechowywać inne tablice = wielowymiarowość
- tak możemy zczytać z pliku (nie trzeba pamiętać o zamknięciu):
```ruby
file_data = File.read("souce.txt").split
```

__RAILSOWE WNIOSKI Z OSTATNICH TREZCH DNI:__
- zapis "resources :photos" tworzy  7 różnych dróg routingu
![routing](https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_20/routing.PNG)
- do powyższych dróg można się odnosić przez akcję kontrolera params[:id], jeśli droga dotyczy konkretnego zasobu
- ścieżki dostępu:
```ruby
photos_path # ścieżka dostępu do akcji index i create
new_photo_path # ścieżka dostępu do akcji new
edit_photo_path # ścieżka dostępu do akcji edit
photo_path # ścieżka dostępu do show, update i destroy

# wszystko powyżej, tylko z "url" zamiast "path" będzie tworzyło pełny adres ścieżki, a nie względny, jak w "path"
```
- przy zasobach zagnieżdżonych:
```ruby
class Magazine < ActiveRecord
  has_many :ads
end

class Ad < ActiveRecord
  belongs_to :magazine
end
```
- możemy zachować drogi zagnieżdżone:
```ruby
resources :magazines do
  resources :ads
end
```
- i wtedy drogi wyglądają następująco:
![nested_routing](https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_20/nested_routing.PNG)

- można zagnieżdżać dowolnie głęboko, ale ścieżki wyglądają potem np. tak:
```ruby
/publishers/1/magazines/2/photos/3
```
- więc jest dobra zasada max jednego zagnieżdżenia, której warto przestrzegać
- możemy wyspecyfikować routing dla roota:
```ruby
root 'pages#main'
```
- linki w Rails możemy dodawać np. tak:
```ruby
<%= link_to 'New article', new_article_path %>
```
- podstawową walidację robimy przez:
```ruby
validates :title, presence: true, length: { minimum: 5 }
```
- ważne metody Active Record:
```ruby
find # znajduje obiekt z podanym kluczem głównym, jak nie ma, zwraca error
take # bierze jakiś jeden obiekt (lub więcje jeśli podamy w nawiasie jakąś liczbę)
first # bierze obiekt o najmniejszym kluczu głównym (w nawiasie możemy podać ile możemy wziąć)
client = Client.order(:first_name).first # można też tak
last # podobnie jak u góry, tylko bierze ostatnie
Client.find_by first_name: 'Jon' # zwraca po jakimś atrybucie, jak nie to nil
Client.where("orders_count = ? AND locked = ?", params[:orders], false) # szukanie
Client.order(:created_at) # wzięcie elementów w konkretnym porządku
Client.order(created_at: :desc) # tak też
```