class Course < ApplicationRecord
  has_many :teacher_assistants, :as => :assistable,
                                :dependent => :nullify

  validates :name, uniqueness: true, presence: true
end
