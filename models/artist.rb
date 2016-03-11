class Artist 
  has_many :paintings

  attr_accessor :name, :nationality

  def initialize name nationality
    @name = name
    @nationality = nationality
  end
end
