class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :crypted_password  # for authlogic
      t.string :password_salt     # for authlogic
      t.string :persistence_token # for authlogic

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
