class Head < ApplicationRecord
  belongs_to :headable, polymorphic: true, optional: true
end
