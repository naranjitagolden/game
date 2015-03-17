class Player < ActiveRecord::Base

	validates :email, :name, :username, :points, presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :username, uniqueness: true, length: 5..20, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :points, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :active, exclusion: { in: [nil] }

end
