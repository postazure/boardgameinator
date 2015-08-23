class SearchController < ApplicationController
  def search
    boardgames = Boardgame.name_includes(params[:term])
    render json: BoardgamesPresenter.new(boardgames)
  end
end