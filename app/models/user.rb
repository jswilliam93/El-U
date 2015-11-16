class User < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :groups
  has_many :posts
  has_many :comments
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
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

  after_save -> {puts "User created."}
  after_rollback -> {puts "Please make sure you entered everything correctly and try again"}
end
