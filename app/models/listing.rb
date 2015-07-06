class Listing < ActiveRecord::Base
  validates_presence_of :title, :description, :estimated_hours, :contact
  has_many :listing_skills
  has_many :skills, :through => :listing_skills
  belongs_to :org
end
