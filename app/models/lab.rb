class Lab < ApplicationRecord
  has_many :teacher_assistants, :as => :assistable,
                                :dependent => :destroy

  validates :name, uniqueness: true, presence: true
end
