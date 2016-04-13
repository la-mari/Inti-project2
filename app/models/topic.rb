class Topic < ActiveRecord::Base
	has_many :publications
end
