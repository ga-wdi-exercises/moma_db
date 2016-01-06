class Artist < ActiveRecord::Base
  attr_accessor :nationality

  has_many :paintings
end
