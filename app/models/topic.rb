class Topic < ActiveRecord::Base
	validates :title, presence: true, uniqueness: true,
                    length: { minimum: 3 }
end
