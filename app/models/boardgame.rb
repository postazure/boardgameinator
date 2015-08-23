class Boardgame < ActiveRecord::Base
  scope :name_includes, ->(name) { where('name iLIKE ?', "% #{name}%") }

  validates_uniqueness_of :bgg_id
end
