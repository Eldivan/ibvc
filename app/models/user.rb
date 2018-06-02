class User < ApplicationRecord
	validates :name, presence: true
	validates :marital_status, presence: true
end
