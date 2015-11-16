class UserUser < ActiveRecord::Base
  validates :user1_id, presence: true
  validates :user2_id, presence: true

  after_save -> {puts "Follow created."}
  after_rollback -> {puts "Please make sure you entered everything correctly and try again"}

end
