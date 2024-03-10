FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
    created_at { "2023-12-31T17:05:48.618+09:00" }
    updated_at { "2024-01-03T18:01:26.857+09:00" }
    admin { false }
    department { Faker::Job.field }
    basic_time { "2024-01-03T08:00:00.000+09:00" }
    work_time { Time.utc(2000, 1, 1, 7, 30, 0) }  #テストエラーの原因は、FactoryBot で指定されているデフォルト値が Time 型と異なるためTime型に修正
  end
end
