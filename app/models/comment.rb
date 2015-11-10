class Comment < ActiveRecord::Base
    validates :text, allow_blank: false, presence: true
end
