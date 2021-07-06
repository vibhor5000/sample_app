class RemoveFnameLnameAddNameToUsers < ActiveRecord::Migration[6.1]
  def up
    remove_column :users
  end

  def down
  
  end
  
end
