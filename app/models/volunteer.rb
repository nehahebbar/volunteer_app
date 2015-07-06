class Volunteer < ActiveRecord::Base
  validates_presence_of :name
  has_many :skill_volunteers
  has_many :skills, :through => :skill_volunteers
end
