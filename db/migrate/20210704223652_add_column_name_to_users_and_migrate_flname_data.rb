class AddColumnNameToUsersAndMigrateFlnameData < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :name :string
    User.all.each do |user|
      user.update_attribute(:name, user.first_name + " " + user.last_name)
    end
  end


  def down
    remove_column :users, :name
  end
end

