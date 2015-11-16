class Post < ActiveRecord::Base
    has_many :comments
    belongs_to :user
    belongs_to :group
    validates :text, allow_blank: false, presence: true
    validates :user_id, presence: true

    after_save -> {puts "Post created."}
    after_rollback -> {puts "Please make sure you entered everything correctly and try again"}
end
