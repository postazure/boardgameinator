class Boardgame < ActiveRecord::Base
  scope :name_includes, ->(search_term) { where('name iLIKE ? or name iLIKE ?', "#{search_term}%", "% #{search_term}%") }

  validates_uniqueness_of :bgg_id
end
