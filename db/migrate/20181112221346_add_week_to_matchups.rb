class AddWeekToMatchups < ActiveRecord::Migration[5.1]
  def change
    add_column :matchups, :week, :integer, null: false, default: 1
  end
end
