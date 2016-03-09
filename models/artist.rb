class Artist < ActiveRecord::Base
  has_many :paintings #return all songs for particular artist
end
