class BoardgamePresenter < Presenter
  def as_json
    {
      id: object.id,
      name: object.name,
      thumbnail: object.thumbnail,
      bgg_id: object.bgg_id,
      year_published: object.year_published
    }
  end
end