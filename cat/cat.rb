class Cat
  attr_reader :name, :preferred_food, :meal_time, :eats_at

  def initialize (name,preferred_food,meal_time)
    @name= name
    @preferred_food = preferred_food
    @meal_time = meal_time



  end

def eats_at
  if  meal_time < 12 && meal_time > 0
    return "#{@meal_time} am"
  elsif meal_time > 12  && meal_time <23
    return "#{@meal_time - 12} pm"
  end
end




def meow
  puts "My name is #{name} and I eat #{preferred_food} at #{eats_at}"
end




end

  b = Cat.new('Bob','fish',20)
  m = Cat.new('Mary','rats',7)

  b.meow
  m.meow
