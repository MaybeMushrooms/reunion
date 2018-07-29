require './lib/activity'

class Reunion
    attr_reader :activities,
                :location
    
    def initialize(location, activity)
        @activities = []
        @location = location
    end

    def add_activity(activity)
     @activities << activity
    end
end
