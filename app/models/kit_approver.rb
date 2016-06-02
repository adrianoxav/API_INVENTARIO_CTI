class KitApprover < ApplicationRecord
  belongs_to :user
  belongs_to :kit
end
