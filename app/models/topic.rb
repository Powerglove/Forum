class Topic < ActiveRecord::Base
	 has_many :comments, dependent: :destroy
	 validates :title, presence: true, uniqueness: true,
                    length: { minimum: 3 }

end
