FactoryBot.define do
  factory :article do
    association(:user)
    title { "MyString" }
    body { "MyString" }
  end
end
