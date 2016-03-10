class Artist < ActiveRecord::Base
  has_many :paintings
  # AR Artist are singular and capitalized by convention
end
# makes connection with paintings
