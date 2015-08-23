require 'rails_helper'

describe BoardgamePresenter do
  let!(:game) {FactoryGirl.create(:boardgame)}

  it '#as_json' do
    json = BoardgamePresenter.new(game).as_json
    expect(json).to eq(
      {
        id: game.id,
        name: game.name,
        kind: game.kind,
        bgg_id: game.bgg_id,
        year_published: game.year_published
      }
    )
  end
end