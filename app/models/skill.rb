class Skill < ActiveRecord::Base
  validates_presence_of :name
  has_many :skill_volunteers
  has_many :volunteers, through: :skill_volunteers
  has_many :listing_skills
  has_many :listings, through: :listing_skills
end
