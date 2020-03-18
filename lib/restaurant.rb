class Restaurant
  attr_reader :opening_time, :name, :dishes
  def initialize(time, name)
    @opening_time = time
    @name = name
    @dishes = []
  end
end
