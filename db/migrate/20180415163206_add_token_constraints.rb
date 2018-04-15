class AddTokenConstraints < ActiveRecord::Migration
  class User < ActiveRecord::Base; end

  def up 
    User.where(token: nil).destroy_all
    change_column :users, :token, :string, null: false
		add_index :users, :token, unique: true
  end
  
  def down
		remove_index :users, :token
		# change_column :users, :token, :string, null: false, default = nil
  end
end
