class Airplane
  attr_accessor :type, :wing_loading, :horsepower, :running, :flying

  def initialize(type, wing_loading, horsepower)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @running = false
    @flying = 'airplane has taken off'
    @grounded = 'airplane has landed'
  end

  def start
    if @running == false
      @running = true
      "airplane started"
    else
      "airplane already started"
    end
  end

  def takeoff
    if @running
      'airplane is not started'
    else
      @flying
    end
  end

  def land
    if @running == true && @flying
      'airplane has landed'
    else
      'airplane already on the ground'
    end
  end
end


my_plane = Airplane.new("cesna", 10, 150)
