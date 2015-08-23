FactoryGirl.define do
  factory :boardgame do
    sequence(:name)
    type 'boardgame'
    bgg_id rand(1000..9999)
    year_published '1999'
  end
end