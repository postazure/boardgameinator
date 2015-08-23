class SearchController < ApplicationController
  skip_before_action :verify_authenticity_token

  def search
    boardgames = Boardgame.name_includes(normalized_search_term)
    render json: BoardgamesPresenter.new(boardgames)
  end

  def normalized_search_term
    params['term'].gsub('+', ' ')
  end
end