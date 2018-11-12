class AddOpponentToMatchup < ActiveRecord::Migration[5.1]
  def change
    add_reference :matchups, :opponent, foreign_key: { to_table: :managers }
  end
end
