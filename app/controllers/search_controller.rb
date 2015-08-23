class SearchController < ApplicationController
  skip_before_action :verify_authenticity_token

  def search
    boardgames = Boardgame.name_includes(params[:term])
    render json: BoardgamesPresenter.new(boardgames)
  end
end