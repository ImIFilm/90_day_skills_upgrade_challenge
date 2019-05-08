## dzień 1.
8/05/2019
czas poświęcony na naukę: 2h


### czego się nauczyłem?
**styl pisania kodu**
- najlepiej używać 2 spacji jako wcięcia
- dla klas bez ciała, używać np. FooError = Class.new(StandardError)
- używać spacji do rozdzielania operatorów od liczb (chyba, że chodzi o potęgę ** lub dzielenie /), stawiać spacje po przecinkach, średnikach oraz po znaku { i przed } w blokach (niekoniecznie w hashach i na pewno nie przy osadzaniu zmiennych w stringach)
- wcięcia w blokach case powinny być takie same w case jak w when
- nowa linia powinna być po modyfikatorach dostępu, jak attr_accessor
- kontynuacja linii to znak \ ale lepiej go nie używać jeśli to nie ostateczność
- warto zapisywać ogromne liczby w taki 1_000_000, a nie taki 1000000 sposób
- linie nie powinny przekraczać 80 znaków
- komentarze przez # i spację
- lepiej nie używać konstrukcji typu a, b, c = 10, 12, 32
- nie używać pętli for chyba że bardzo potrzeba, prawie zawsze można do tego użyć iteratorów
- stosować gdzie się da result = some_condition ? something : something_else
- trzeba wykorzystywać fakt, że if i case zwracają wynik, czyli zmienna przypisz if … else end, a nie if i potem zmienna przypisz…
- warto używać when x then … do najprostszych przypadków
- zaprzeczenie warto robić przez !, a nie przez not
- nie używać słów kluczowych and i or, zawsze && i ||
- unless = if not i lepiej używać unless, np. do_something unless some_condition
- nie używać nawiasów przy warunku z “if”
- do nieskończonych pętli używać Kernel#loop, czyli 
```ruby
  loop do
    do_something
  end
```
- lepiej używać krótszych operatorów, jak +=, *= czy &&=
- warto używać keyword arguments
```ruby
  def some_method(bar: false)
    puts bar
  end
```
  
### co obejrzałem?
- o keyword arguments: https://youtu.be/4e-_bbFjPRg
- o rozmowach technicznych: https://youtu.be/nZNfSQKC-Yk

### co przećwiczyłem?
- różne zabawy z keyword arguments https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_08/keyword_args_exercises.rb
