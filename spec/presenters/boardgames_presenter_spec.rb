require 'rails_helper'

describe BoardgamesPresenter do
  let!(:game1) {FactoryGirl.create(:boardgame)}
  let!(:game2) {FactoryGirl.create(:boardgame)}
  let!(:game3) {FactoryGirl.create(:boardgame)}

  it '#as_json' do
    json = BoardgamesPresenter.new([game1, game2, game3]).as_json
    expect(json).to match_array(
      boardgames: [
        {
          id: game1.id,
          name: game1.name,
          kind: game1.kind,
          bgg_id: game1.bgg_id,
          year_published: game1.year_published
        },
        {
          id: game2.id,
          name: game2.name,
          kind: game2.kind,
          bgg_id: game2.bgg_id,
          year_published: game2.year_published
        },
        {
          id: game3.id,
          name: game3.name,
          kind: game3.kind,
          bgg_id: game3.bgg_id,
          year_published: game3.year_published
        }
      ]
    )
  end
end