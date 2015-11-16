class UserGroup < ActiveRecord::Base
  validates :user_id, presence: true
  validates :group_id, presence: true

  after_save -> {puts "User linked to Group."}
  after_rollback -> {puts "Please make sure you entered everything correctly and try again"}

end
