class Painting < ActiveRecord::Base
  #  Ar classes are singular adn capitalzed
  belongs_to :artist
end
