class Murdering < ActiveRecord::Base
  belongs_to :weapon, polymorphic: true, foreign_key: :weaponable_id, foreign_type: :weaponable_type
  validates :murderer_id, :uniqueness => { :scope => [:victim_id]}

  has_one :self_ref, :class_name => self, :foreign_key => :id
  has_one :gun, through: :self_ref, source: :weapon, source_type: "Gun"
  has_one :candlestick, through: :self_ref, source: :weapon, source_type: "Candlestick"
  has_one :knife, through: :self_ref, source: :weapon, source_type: "Knife"

  belongs_to :murderer, class_name: "Person"
  belongs_to :victim, class_name: "Person"
end
