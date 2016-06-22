class Artist < ActiveRecord::Base
  belongs_to :painting
# AR classes are singular and capitalized by convention
end
