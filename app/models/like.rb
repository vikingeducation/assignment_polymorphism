class Like < ActiveRecord::Base
  belongs_to :likeable, :polymorphic => true

  belongs_to :parent, :class_name => "Picture"
  belongs_to :parent, :class_name => "Link"
  belongs_to :parent, :class_name => "Post"

end
