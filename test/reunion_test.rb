require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'
require 'pry'

class ReunionTest < Minitest::Test
 
   def test_it_exists
     reunion = Reunion.new("Rec Center", "Golf")
     activity = Activity.new("Golf", 20.0)
     activity.add_participants("Lisa", 50.0)
     activity.add_participants("Greg", 40.0)
     assert_instance_of Reunion, reunion
   end

   def test_it_has_location
    reunion = Reunion.new("Rec Center", "Golf")
    assert_equal "Rec Center", reunion.location
   end

   def test_it_can_add_activities
    reunion = Reunion.new("Rec Center", "Golf")
    activity = Activity.new("Golf", 20.0)
    activity2 = Activity.new("Paintball", 200.0)
    assert_equal [], reunion.activities
    reunion.add_activity(activity)
    reunion.add_activity(activity2)
    expected = [activity, activity2]
    assert_equal expected, reunion.activities
   end
end
