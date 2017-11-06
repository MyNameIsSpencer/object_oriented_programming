class Cat
  def initialize(name)
    @name = name
    @preferred_food = 0
    @meal_time = 0
  end

  def time_to_eat(hour)
    if hour = 0
        hour = '12AM'
      elsif hour >= 13 && hour < 24
        hour -= 12 + 'PM'
      elsif hour = 1 && hour <= 12
        hour = hour + 'AM'
        return hour
    end
    @meal_time = hour
  end

  def name
    @name
  end

  def reader_food
    @preferred_food
  end

  def reader_meal_time
    @meal_time
  end

  def preferred_food(food)
    @preferred_food = food
  end

  # def meal_time(time)
  #   @meal_time = time
  # end

end




puts '=======NEW CAT======='

stanky = Cat.new('Stanky')
puts stanky.name

puts "What is #{stanky.name}'s favourite food"
food = gets.chomp.to_s

stanky.preferred_food(food)

puts "#{stanky.name}'s preferred food is #{stanky.reader_food}."

stanky.time_to_eat(15)
puts stanky.meal_time



puts '=======NEW CAT======='

spanky = Cat.new('Spanky')
puts spanky.name

puts "What is #{spanky.name}'s favourite food"
food = gets.chomp.to_s

spanky.preferred_food(food)

puts "#{spanky.name}'s preferred food is #{spanky.reader_food}."
