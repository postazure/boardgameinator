require 'helpers/boardgame_cacher'

namespace :cache do
  desc "Get the top 50 hottest games"
  task hot_boardgames: :environment do
    BoardgameCacher.new.hot_boardgames
  end
end
