class Reaction < ApplicationRecord
  belongs_to :micropost
  belongs_to :user
  VALID_CONTENT=["Like", "Dislike", "Desire", "None"]
  validates :content, presence: true,   inclusion: { in: VALID_CONTENT, message: "%{value} is not a valid reaction"}
  validates :micropost_id, presence: true
  validates :user_id, presence: true
end
