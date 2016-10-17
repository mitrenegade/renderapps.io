class Lead < ApplicationRecord

	validates :name, presence: true
  validates :email, presence: true
  validates :topic, presence: true
  validates :message, presence: true
	
end
