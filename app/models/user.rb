class User < ApplicationRecord
	has_one :user_model

	has_many :kit_approver
	has_many :kit_verifier
	has_many :kit_buyer
end
