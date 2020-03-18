class Restaurant
  attr_reader :opening_time, :name, :dishes
  def initialize(time, name)
    @opening_time = time
    @name = name
    @dishes = []
  end

  def closing_time(time)
    close = opening_time.to_i + time
    @closing_time = close.to_s + ':00'
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    if @opening_time <= '12:00'
      true
    else
      false
    end
  end

  def menu_dish_names
    dish_names = []
    @dishes.each do |dish|
      dish_names << dish.upcase
    end
    dish_names

  end

  def announce_closing_time
    
  end
end
