class CreateMatchups < ActiveRecord::Migration[5.1]
  def change
    create_table :matchups do |t|
      t.decimal :score, null: false
      t.boolean :victory, null: false

      t.timestamps
    end
  end
end
