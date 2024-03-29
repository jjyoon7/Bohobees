class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :photo, PhotoUploader

  has_many :events
  has_many :inquiries, through: :events, source: 'reservations' # as host
  has_many :reservations # as traveller

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:facebook]

	def self.find_for_facebook_oauth(auth)
    	where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
	      user.provider = auth.provider
	      user.uid = auth.uid
	      user.email = auth.info.email
	      user.password = Devise.friendly_token[0,20]  # Fake password for validation
	      user.first_name = auth.info.first_name
	      user.last_name = auth.info.last_name
	      user.photo = auth.info.image
	      user.token = auth.credentials.token
	      user.token_expiry = Time.at(auth.credentials.expires_at)
		end
	end

end
