class Review < ActiveRecord::Base
  belongs_to :reviewable, polymorphic: true
  belongs_to :author, class_name: "Manager", foreign_key: :author_id
end
