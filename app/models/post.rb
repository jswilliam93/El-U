class Post < ActiveRecord::Base
    has_many :comments
    validates :text, allow_blank: false, presence: true
    validates :announcment
end
