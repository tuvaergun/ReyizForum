class Topic < ActiveRecord::Base
	extend FriendlyId
  friendly_id :title, use: :slugged

  paginates_per 10

	belongs_to	:user
	has_many		:posts

end
