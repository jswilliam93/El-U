class User < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :groups
  has_many :posts
  has_many :comments
  validates :name, presence: true
  validates :password, presence: true, length: { minimum: 5 }
  validates :email, presence: true, uniqueness: true
  validates :sid, uniqueness: true, allow_nil: true, allow_blank: true
end
