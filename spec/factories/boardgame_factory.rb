FactoryGirl.define do
  factory :boardgame do
    sequence(:name)
    thumbnail 'http://www.some-image.com'
    bgg_id { rand(1000..9999) }
    year_published '1999'
  end
end