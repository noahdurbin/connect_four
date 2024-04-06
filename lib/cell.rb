class Cell
  attr_accessor :state

  def initialize (cell_details)
    @location = cell_details[:location]
    @state = cell_details[:state]
  end

  def render
    self.state
  end

  def change_state(piece)
    if self.state == "."
      self.state = piece
    end
  end
end