class UserUser < ActiveRecord::Base
  validates :user1_id, presence: true
  validates :user2_id, presence: true
end
