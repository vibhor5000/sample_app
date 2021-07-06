class UpdateAllUsersToHaveDefaultPoints < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :points, :integer
    User.update_all(points: 100)
  end

  def down
    User.update_all(points: 0)
  end
end
