class Location < ApplicationRecord
	has_many :recording
	validates :name, presence: true,
				length: {minimum: 3}
end
