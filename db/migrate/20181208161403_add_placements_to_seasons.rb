class AddPlacementsToSeasons < ActiveRecord::Migration[5.1]
  def change
    add_reference :seasons, :first, foreign_key: { to_table: :managers }
    add_reference :seasons, :second, foreign_key: { to_table: :managers }
    add_reference :seasons, :third, foreign_key: { to_table: :managers }
    add_reference :seasons, :fourth, foreign_key: { to_table: :managers }
  end
end
