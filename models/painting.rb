class Painting < ActiveRecord::Base
  belongs_to :artist
  # AR Artist are singular and capitalized by convention
end
