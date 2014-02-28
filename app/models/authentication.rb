class Authentication < ActiveRecord::Base
  belongs_to :user

  attr_accessor :uid, :provider, :access_token, :access_secret

    
  def self.find_from_auth_hash(authHash)
    auth = find_by_uid(authHash['uid'])
    if auth
    	return auth.user
    else
    	User.create_from_auth_hash(authHash)
    end
  end

end
