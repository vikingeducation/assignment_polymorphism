class Song < ActiveRecord::Base
	has_one :author, :as => :authored
end
