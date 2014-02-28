class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :authentications, dependent: :destroy

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true

  self.create_from_auth_hash(authHash)

  	create(email:authHash["info"]["email"], password:)

  end

end