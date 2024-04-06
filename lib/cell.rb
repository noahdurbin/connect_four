class Cell
  attr_reader :state

  def initialize (cell_details)
    @location = cell_details[:location]
    @state = cell_details[:state]
  end

  def render
    self.state
  end

end