class Comment < ActiveRecord::Base
    belongs_to :post
    belongs_to :user
    validates :text, allow_blank: false, presence: true
    validates :user_id, presence: true
    validates :post_id, presence: true

    after_save -> {puts "Comment created."}
    after_rollback -> {puts "Please make sure you entered everything correctly and try again"}
end
