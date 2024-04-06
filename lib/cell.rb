class Cell
  attr_accessor :state

  def initialize (cell_details)
    @location = cell_details[:location]
    @state = cell_details[:state]
  end

  def render
    self.state
  end

  def change_state
    if self.state == "."
      self.state = "X"
    end
  end
end