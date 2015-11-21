class User < ActiveRecord::Base
	has_many :comments, :topics
end
