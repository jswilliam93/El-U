class Group < ActiveRecord::Base
    has_and_belongs_to_many :users
    has_many :posts
    after_save -> {puts "Group created."}
    after_rollback -> {puts "Please make sure you entered everything correctly and try again"}
end
