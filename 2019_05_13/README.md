## dzień 6.
13/05/2019
czas poświęcony na naukę: 1h
![my target](https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_13/target1.PNG)

### czego się nauczyłem?
**Enumerable**
- klasy mają metodę "each" w swoim ciele i to pozwala na iterowanie po nich
- możemy mieć np. 
```ruby
array.each do |n|
  return true if n.odd?
end
false
```
albo krócej:
```ruby
array.any? { |n| n.odd? }
```
albo jeszcze krótszą wersję:
```ruby
array.any?(&:odd?)
```
- podobnie do any? działają all?, none?
- __niezwykle ważne__ są np.
  - collect / map, które mapują elementy jakąś operacją
  - reject, która odrzuca elemtny spełniające jakieś kryterium
  - detect / find, które znajdują pierwsze wystąpienie elementu spełniającego warunek
  - grep, która pozostawia jedynie elemtny spełniające regexa
  - partition, które dzieli zbiór na elementy spełniające i te które nie pewien warunek

### co obejrzałem?
- o Enuberable: https://youtu.be/y4V9qVTkj3c

### co przećwiczyłem?
- różne zabawy z Enumerable https://github.com/ImIFilm/90_day_skills_upgrade_challenge/blob/master/2019_05_13/enumerable_exercises.rb
