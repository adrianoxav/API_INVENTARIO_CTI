class Owner < ApplicationRecord
	has_many :kits
	has_many :items
end
