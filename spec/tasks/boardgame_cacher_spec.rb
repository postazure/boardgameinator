require 'rails_helper'
require_relative '../../lib/helpers/boardgame_cacher.rb'

describe BoardgameCacher do
  describe '#hot_boardgames' do
    it 'stores a list of "hot" games in the database' do
      boardgame_cacher = BoardgameCacher.new

      expect{
        boardgame_cacher.hot_boardgames
      }.to change{ Boardgame.count }.from(0).to(50)
    end
  end
end