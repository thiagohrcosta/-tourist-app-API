class RemoveUserToDashboard < ActiveRecord::Migration[6.1]
  def change
    remove_column :dashboards, :user_id
  end
end
