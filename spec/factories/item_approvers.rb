FactoryGirl.define do
  factory :item_approver do
    user nil
    item nil
    state false
    comments "MyText"
  end
end
