class Painting < ActiveRecord::Base
  has_many :artist
# AR classes are singular and capitalized by convention
end
