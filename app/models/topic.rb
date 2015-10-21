class Topic < ActiveRecord::Base
	 has_many :comments
	validates :title, presence: true, uniqueness: true,
                    length: { minimum: 3 }

end
