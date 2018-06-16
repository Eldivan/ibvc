class User < ApplicationRecord
	validates :name, presence: true
	validates :marital_status, presence: true
	validates :email, presence: true, uniqueness:true
	has_many :children
end
