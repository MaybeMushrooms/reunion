require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test
 
   def test_it_exists
     reunion = Reunion.new("Rec Center", "Golf")
     activity = Activity.new("Golf", 20.0)
     activity.add_participants("Lisa", 50.0)
     activity.add_participants("Greg", 40.0)
     assert_instance_of Reunion, reunion
   end
end
