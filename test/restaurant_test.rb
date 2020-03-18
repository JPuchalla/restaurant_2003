require 'minitest/autorun'
require 'minitest/pride'
require './lib/restaurant'

class RestaurantTest < Minitest::Test
def setup
  @restaurant = Restaurant.new('10:00', 'Fuel Cafe')
end
  def test_it_exists

    assert_instance_of Restaurant, @restaurant
  end

  def test_it_has_opening_time


    assert_equal '10:00', @restaurant.opening_time
  end

  def test_it_has_name


    assert_equal 'Fuel Cafe', @restaurant.name
  end

  def test_it_has_dishes
    

    assert_equal [], @restaurant.dishes
  end

  #Iteration 2 Tests:
  def test_it_has_closing_time
    skip
    restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
    restaurant2 = Restaurant.new('16:00', 'Il Poggio')

    assert_equal '18:00', restaurant1.closing_time(8)
    assert_equal '23:00', restaurant2.closing_time(7)
  end

  def test_it_can_add_dishes
    skip
    restaurant = Restaurant.new('16:00', 'Il Poggio')

    restaurant.add_dish('Burrata')
    restaurant.add_dish('Pizzetta')
    restaurant.add_dish('Ravioli')

    assert_equal ['Burrata', 'Pizzetta', 'Ravioli'], restaurant.dishes
  end
end
