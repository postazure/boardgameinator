class BoardgameCacher
  def hot_boardgames
    hot_list = BggApi.hot(type: 'boardgame')['item']
    hot_list.each do |game|
      Boardgame.find_by(bgg_id: boardgame_params(game)['bgg_id']) || Boardgame.create(boardgame_params(game))
    end
  end

  private

  def boardgame_params(game)
    {
      name: game['name'][0]['value'],
      bgg_id: game['id'],
      year_published: game['yearpublished'][0]['value'],
      thumbnail: game['thumbnail'][0]['value']
    }
  end
end