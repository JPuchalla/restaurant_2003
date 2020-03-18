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
      p @dishes.upcase
    end
  end
end
