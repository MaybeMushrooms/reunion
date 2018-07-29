class Activity
  attr_reader :name,
              :participants,
              :base_cost,
              :cost_per_participant,
              :total_cost
  def initialize(name, base_cost = 20.0, cost_per_participant = 30.0)
    @name = name
    @participants = Hash.new(0)
    @base_cost = base_cost
    @cost_per_participant = cost_per_participant
  end
    
  def add_participants(participant_name, ammount_paid)
    @participants[participant_name] = ammount_paid
  end

  def fair_share
    total_cost.to_f / @participants.count
  end

  def owed_or_owe(participant_name)
    fair_share - @participants[participant_name] 
  end

  def total_cost
    @base_cost + @cost_per_participant * @participants.count
  end
end
