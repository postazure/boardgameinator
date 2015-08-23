class BoardgamesPresenter < Presenter
  def as_json
    {
      boardgames: object.map { |game| BoardgamePresenter.new(game).as_json }
    }
  end
end