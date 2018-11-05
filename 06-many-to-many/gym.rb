class Gym
  attr_reader :ringleader, :location, :kind, :open

  def initialize(ringleader, location, kind, open=true)
    @ringleader = ringleader
    @location = location
    @kind = kind
    @open = open
  end

  def victors
    # create an empty array to track the trainers in
    result = []
    # loop over all the badges
    Badge.all.each do |badge|
      # check whether i'm the gym
      if badge.gym == self
        ## collect the trainer from the badge
        result << badge.trainer
      end
    end
    result
  end

end
