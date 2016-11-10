require_relative 'bike'

class DockingStation

  attr_reader = :bikes

  public
  def initialize
    @bikes = []
    5.times{ @bikes << Bike.new }
  end

  def release_bike
    if empty?
      raise "Error: No bikes left"
    else
      @bikes.pop
    end
  end

  def dock_bike(bike)
    unless full? && bike.class == Bike
      @bikes << bike
    else
      raise "Error: Bike station full"
    end
  end

  def bikes
    @bikes
  end

#private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end
