#inspired by https://youtu.be/4e-_bbFjPRg

class Person
  attr_accessor :name, :reputation, :skill_level

  def initialize (name, reputation, skill_level)
    @name = name
    @reputation = reputation
    @skill_level = skill_level
  end

  def train (hours: 0, minutes: 0, teacher_class: nil)
    @skill_level += (hours*60 + minutes)
    @reputation = if teacher_class=='A'
                    1
                  else
                    0
                  end 
  end

  def train_more (
    amount_of_friends:,
    outside:,
    with_ball: true,
    hours: 0,
    minutes: 0
  )
    @skill_level += (hours*60 + minutes + amount_of_friends)
    @skill_level += if with_ball && outside
                      15
                    end
  end

  def to_s
    puts "reputation:"
    puts @reputation
    puts "skill level"
    puts @skill_level
    puts
  end
end

#main part
hugo = Person.new("Hugo", 0, 0)

hugo.train(hours: 1)
hugo.to_s

hugo.train(minutes: 15, teacher_class: 'A')
hugo.to_s

hugo.train_more(
  minutes: 30,
  amount_of_friends: 10,
  outside: true
)
hugo.to_s
