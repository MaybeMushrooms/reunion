require './lib/activity'
require 'pry'

class Reunion
  attr_reader :activities,
              :location,
              :total_reunion_cost

  def initialize(location)
    @activities = []
    @location = location
  end

  def add_activity(activity)
    @activities << activity
  end

  def total_reunion_cost
    @activities.sum do |iterate|  
      iterate.total_cost
    end
  end

  def total_owed_or_owe
    @activities.inject(Hash.new) do |break_down, activity|
      activity.owed_or_owe_by_participants.merge(break_down) do |key, oldval, newval|
        oldval + newval
      end
    end
  end
  
  def print_summary
    print_headers
    print_participants
  end

  def print_headers
    puts "Participants".ljust(20) + "Ammount Owed".ljust(15)
  end

  def print_participants
    total_owed_or_owe.each do |participant, total_owed|
      puts "#{participant}".ljust(20) + "#{total_owed}".ljust(15) 
    end
  end
end
