class ListingSkill < ActiveRecord::Base
  belongs_to :listing
  belongs_to :skill
end
