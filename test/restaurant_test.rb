require 'minitest/autorun'
require 'minitest/pride'
require './lib/restaurant'

class RestaurantTest < Minitest::Test
def setup
  @restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
  @restaurant2 = Restaurant.new('16:00', 'Il Poggio')
end
  def test_it_exists

    assert_instance_of Restaurant, @restaurant1
  end

  def test_it_has_opening_time


    assert_equal '10:00', @restaurant1.opening_time
  end

  def test_it_has_name


    assert_equal 'Fuel Cafe', @restaurant1.name
  end

  def test_it_has_dishes


    assert_equal [], @restaurant1.dishes
  end

  #Iteration 2 Tests:
  def test_it_has_closing_time


    assert_equal '18:00', @restaurant1.closing_time(8)
    assert_equal '23:00', @restaurant2.closing_time(7)
  end

  def test_it_can_add_dishes


    @restaurant1.add_dish('Burrata')
    @restaurant1.add_dish('Pizzetta')
    @restaurant1.add_dish('Ravioli')

    assert_equal ['Burrata', 'Pizzetta', 'Ravioli'], @restaurant1.dishes
  end

  def test_restraunt_2_can_add_dishes

    @restaurant2.add_dish('Burrata')
    @restaurant2.add_dish('Pizzetta')
    @restaurant2.add_dish('Ravioli')
    assert_equal ['Burrata', 'Pizzetta', 'Ravioli'], @restaurant2.dishes
  end

  def test_if_restraunt_is_open_for_lunch
    assert_equal true, @restaurant1.open_for_lunch?
    assert_equal false, @restaurant2.open_for_lunch?
  end

  def test_if_menu_dish_names_displays
    @restaurant2.add_dish('Burrata')
    @restaurant2.add_dish('Pizzetta')
    @restaurant2.add_dish('Ravioli')

    assert_equal ['BURRATA', 'PIZZETTA', 'RAVIOLI'], @restaurant2.menu_dish_names

  end


end
