class EndUser < ApplicationRecord

	has_many :responses
	has_many :declines
end
