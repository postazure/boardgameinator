class BoardgamePresenter < Presenter
  def as_json
    {
      id: object.id,
      name: object.name,
      kind: object.kind,
      bgg_id: object.bgg_id,
      year_published: object.year_published
    }
  end
end