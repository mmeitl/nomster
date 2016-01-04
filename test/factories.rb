FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "me#{n}@gmail.com"
    end
    password "password99"
    password_confirmation "password99"
  end
    
    factory :place do
  	name "name1"
  	description "description2"
  	address "801 church st, mountain view, ca 94041"
  	latitude(42.36)
  	longitude(-71.05)
  	association :user
  end
end