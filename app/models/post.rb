class Post < ActiveRecord::Base
    has_many :comments
    belongs_to :user
    belongs_to :group
    validates :text, allow_blank: false, presence: true
    validates :user_id, presence: true
end
