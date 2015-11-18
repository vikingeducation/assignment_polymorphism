class Review < ActiveRecord::Base

  belongs_to :parent, foreign_type: :reviewable_type,
                      foreign_key: :reviewable_id,
                      polymorphic: true

end
