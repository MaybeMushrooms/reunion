require './lib/reunion'
require './lib/activity'

activity = Activity.new("Golf", 20.0)
activity2 = Activity.new("Paintball", 200.0)
activity.add_participants("Lisa", 50.0)
activity.add_participants("Greg", 40.0)
activity2.add_participants("Lisa", 50.0)
activity2.add_participants("Greg", 40.0)
reunion = Reunion.new("Rec Center")
reunion.add_activity(activity)
reunion.add_activity(activity2)




activity3 = Activity.new("Knife Throwing", 65.0)
activity4 = Activity.new("Pancake Making", 70.0)
activity3.add_participants("Lisa", 20.0)
activity3.add_participants("Greg", 40.0)
activity4.add_participants("Lisa", 53.0)
activity4.add_participants("Greg", 45.0)
reunion2 = Reunion.new("The Hills")

reunion2.add_activity(activity3)
reunion2.add_activity(activity4)

reunion.print_summary
reunion2.print_summary