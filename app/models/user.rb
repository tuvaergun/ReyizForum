class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :topics
  has_many :posts

	has_attached_file :avatar
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
