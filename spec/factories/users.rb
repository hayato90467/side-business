FactoryBot.define do
  factory :user do
    name { 'abe' }
    email                      { 'kkkis@gmail.com' }
    password                   { 'h00000000' }
    password_confirmation      { 'h00000000' }
  end
end
