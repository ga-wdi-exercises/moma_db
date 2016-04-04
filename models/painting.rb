class Painting < ActiveRecord ::Base

  belongs_to :Artist

attr_accessor :title


end
