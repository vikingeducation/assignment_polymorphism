class Person < ActiveRecord::Base
  has_many :committed_murders,
           class_name: "Murdering",
           foreign_key: :murderer_id,
           :dependent => :destroy

  has_many :victims,
           class_name: "Person",
           :through => :committed_murders

  has_many :received_murders,
           class_name: "Murdering",
           foreign_key: :victim_id,
           :dependent => :destroy

  has_many :murderers,
           class_name: "Person",
           :through => :received_murders
end
