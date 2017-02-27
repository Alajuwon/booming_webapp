class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         serialize :following, Array

         belongs_to :hotspot




    def self.create_with_omniauth(auth)
          create! do |user|
   		user.provider = auth["provider"]
   		user.uid = auth["uid"]
     	user.name = auth["info"]["name"]
    end
 

	  # the following code pulls user avatars from FB:

  	def largeimage
    	"http://graph.facebook.com/#{self.uid}/picture?type=large"
  	end
  
 		 def normalimage
    	"http://graph.facebook.com/#{self.uid}/picture?type=normal"
  	end
end
