require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require "./lib/activity"
require 'pry'

class ActivityTest < Minitest::Test

    def test_it_has_name
      activity = Activity.new("Golf", 20, 5)
      assert_instance_of Activity, activity
    end
    
    def test_it_has_participants
      activity = Activity.new("Golf", 20.0, 5.0)
      assert_equal ({}), activity.participants
    end

    def test_adding_participants
    activity = Activity.new("Golf", 20.0, 5.0)
    activity.add_participants("Greg", 40)
    expected = {"Greg" => 40.0}
    assert_equal expected, activity.participants
    end

    def test_total_cost
      activity = Activity.new("Golf", 20.0, 5.0)
    activity.add_participants("Greg", 40)
    expected = 25.0
    assert_equal expected, activity.total_cost
    end

    def test_fair_share
      
      activity = Activity.new("Golf", 20)
      activity.add_participants("Greg", 40)
      expected = 50.0
      assert_equal expected, activity.fair_share
    end
    def test_how_much_owed_or_owe
      activity = Activity.new("Golf", 20.0)
      activity.add_participants("Lisa", 50.0)
      activity.add_participants("Greg", 40.0)
      expected = -10.0
      assert_equal expected, activity.owed_or_owe("Lisa")
    end
  end
