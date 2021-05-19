FactoryBot.define do
  factory :note do
    massage "My important note."
    association :Project
    association :user
  end
end
