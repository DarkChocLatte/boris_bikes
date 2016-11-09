
class DockingStation

  attr_reader = :bikes

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    if bike.class == Bike
      @bikes = bike
      return "Bike Docked"
    else
      "That's not a bike"
    end
  end

  def bikes
    @bikes
  end



end

class Bike
  def working?
    true
  end
end
