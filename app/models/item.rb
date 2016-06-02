class Item < ApplicationRecord
	has_and_belongs_to_many :kit
	has_and_belongs_to_many :owners

	has_many :user_verifier, through: :item_verifiers, source: :user
	has_many :user_approver, through: :item_approvers, source: :user
	has_many :user_buyer, through: :item_buyers, source: :user



end
