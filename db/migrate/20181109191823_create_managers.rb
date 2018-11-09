class CreateManagers < ActiveRecord::Migration[5.1]
  def change
    create_table :managers do |t|
      t.string :real_name, null: false
      t.string :current_nickname, null: false

      t.timestamps
    end
  end
end
