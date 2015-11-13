class User < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :groups
  has_many :posts
  has_many :comments
  validates :name, presence: true
  validates :password, presence: true, length: { minimum: 5 }

  class EmailValidator < ActiveModel::EachValidator
		def validate_each(record, attribute, value)
			unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
				record.errors[attribute] << (options[:message] || "is not a valid email")
			end
		end
	end

  validates :email, presence: true, uniqueness: true, email: true
  validates :sid, uniqueness: true, allow_nil: true, allow_blank: true
end
