class Response < ActiveRecord::Base
  attr_accessible :choice_id, :respondant_id

  belongs_to :choice
  belongs_to :respondant, class_name: "User"

  validates :respondant_id, unique_respondant: true
  validates :respondant_id, respondant_not_pollster: true
  validates :respondant_id, same_team: true

end
