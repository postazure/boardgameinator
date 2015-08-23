require 'rails_helper'

context SearchController do
  let(:headers) { nil }

  describe '#search' do
    let!(:game) { FactoryGirl.create(:boardgame, name: 'Settlers of Catan') }
    it 'returns json' do
      post :search, {term: 'catan'}, headers
      content = JSON.parse(response.body)
      expect(content['boardgames']).to include(
        {
          'id' => game.id,
          'name' => game.name,
          'thumbnail' => game.thumbnail,
          'bgg_id' => game.bgg_id,
          'year_published' => game.year_published
        }
      )
    end
  end
end

