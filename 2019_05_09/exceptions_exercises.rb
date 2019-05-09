class Person
  attr_accessor :name, :amount_of_pets, :money_per_month, :free_time

  def initialize(name, pets, money, time)
    @name = name
    @amount_of_pets = pets
    @money_per_month = money
    @free_time = time
  end

  def get_dog (amount)
    @amount_of_pets+=amount
    @money_per_month-=40*amount
    @free_time-=100
    if @free_time < 0
      raise "You don't have time! Maybe you should ask friend form help?"
    end
  end

  def find_free_time(minutes)
    @free_time+=minutes
  end

  def to_s
    puts "_____________"
    puts "name: " + @name
    puts "amount of pets: " + @amount_of_pets.to_s
    puts "money per month: " + @money_per_month.to_s
    puts "free time: " + @free_time.to_s
  end
end

john = Person.new("John", 5, 1000, 60)
john.to_s

begin
  john.get_dog(1)
rescue => exception
  puts "\n################"
  puts exception.message
  puts exception.backtrace
  puts "################\n"
end
john.to_s

john.find_free_time(200)

begin
  john.get_dog(1)
rescue => exception
  puts "\n################"
  puts exception.message
  puts exception.backtrace
  puts "################\n"
end
john.to_s


