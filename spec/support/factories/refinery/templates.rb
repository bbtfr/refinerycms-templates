
FactoryGirl.define do
  factory :template, :class => Refinery::Templates::Template do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

