class AddBetterGoalTimesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fivek_goal_mm, :integer
    add_column :users, :fivek_goal_ss, :integer
  end
end
