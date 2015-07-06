class Listing < ActiveRecord::Base
  has_many :skills
  has_many :volunteers, :through => :skills
end
