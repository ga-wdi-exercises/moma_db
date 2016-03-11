class Painting
  belongs_to :arttist

  attr_reader :titles

  def initialize title
    @title = title
  end

end
