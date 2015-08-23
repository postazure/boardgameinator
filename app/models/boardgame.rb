class Boardgame < ActiveRecord::Base
  scope :name_includes, ->(name) { where('name iLIKE ?', "% #{name}%") }
end
