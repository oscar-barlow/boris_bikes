class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def get_bike
    Bike.new
  end

  def release_bike
    raise "No bikes available." if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "Dock at capacity." if @bikes.length > 19
    @bikes << bike
  end
end
