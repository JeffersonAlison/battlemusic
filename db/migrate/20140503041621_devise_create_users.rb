class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :name,              :null => false, :default => ""
      t.string :email,              :null => false, :default => ""
      t.string :login,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
      t.string :url_image, :null => false, :default => ""
      t.datetime :date_birth
      t.string :facebook, :null => false, :default => ""
      t.string :twitter, :null => false, :default => ""
      t.integer :level, :null => false, :default => 1
      t.integer :nivel, :null => false, :default => 1
      t.integer :experience, :null => false, :default => 0
      t.boolean :visible_data, :default => true
      t.boolean :enable, :default => true


      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0 # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ## Token authenticatable
      # t.string :authentication_token


      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :login,                :unique => true
    add_index :users, :name
    add_index :users, :url_image
    add_index :users, :date_birth
    add_index :users, :facebook
    add_index :users, :twitter
    add_index :users, :level
    add_index :users, :nivel
    add_index :users, :experience
    add_index :users, :visible_data
    add_index :users, :enable
    add_index :users, :reset_password_token, :unique => true
    # add_index :users, :confirmation_token,   :unique => true
    # add_index :users, :unlock_token,         :unique => true
    # add_index :users, :authentication_token, :unique => true
  end
end
