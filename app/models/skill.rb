class Skill < ActiveRecord::Base
  validates_presence_of :name
  has_many :skill_volunteers
  has_many :volunteers, through: :skill_volunteers
end
