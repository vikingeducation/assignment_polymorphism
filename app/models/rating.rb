class Rating < ActiveRecord::Base
  belongs_to :ratable,  :polymorphic => true

  validates :value,
            :presence => true,
            :numericality => {
              :only_integer => true,
              :greater_than => 0,
              :less_than => 6
            }

  def self.avg_for(ratable)
    result = Rating.select('AVG(ratings.value) AS rating')
      .from('ratings')
      .where("ratable_id = ? AND ratable_type = ?", ratable.id, ratable.class.name)
      .group("ratable_id")
      .first

    result ? result.rating : 0
  end
end
