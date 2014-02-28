class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string, :provider
      t.character, :uid
      t.character, :access_token
      t.character :access_secret

      t.timestamps
    end
  end
end
