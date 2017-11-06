class Cat
  def initialize(name)
    @name = name
    @preferred_food = 0
    @meal_time = nil
  end

  def eats_at(hour)
    if hour <= 11
      if hour == 0
        hour = 12
      end
  @meal_time = hour.to_s + 'AM'
  elsif hour >= 12 && hour < 24
      if hour >= 13
        hour -= 12
      end
    @meal_time = hour.to_s + "PM"
    else
      puts "INVALID NUMBER"
    end
  end

  def meow
    puts "Hi! Meow name is #{@name} and I eat #{@preferred_food} at #{@meal_time}"
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




puts '=======STANKY======='

stanky = Cat.new('Stanky')
puts stanky.name

puts "What is #{stanky.name}'s favourite food"
food = gets.chomp.to_s

stanky.preferred_food(food)
puts "#{stanky.name}'s preferred food is #{stanky.reader_food}."

stanky.eats_at(20)
puts stanky.reader_meal_time

stanky.meow


puts '=======SPANKY======='

spanky = Cat.new('Spanky')
puts spanky.name

puts "What is #{spanky.name}'s favourite food"
food = gets.chomp.to_s

spanky.preferred_food(food)

puts "#{spanky.name}'s preferred food is #{spanky.reader_food}."

spanky.eats_at(7)
puts spanky.reader_meal_time

spanky.meow
