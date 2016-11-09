

class DockingStation

  attr_reader = :bikes

  def initialize
    @bikes = []
    5.times{@bikes << Bike.new }
  end

  def release_bike
    if @bikes.empty?
      raise "Error: No bikes left"
    else
      @bikes.pop
    end
  end

  def dock_bike(bike)
    if bike.class == Bike
      @bikes << bike
      return "Bike Docked"
    else
      "That's not a bike"
    end
  end

  def bikes
    @bikes.count
  end

end

class Bike

  def working?
  true
  end
end
