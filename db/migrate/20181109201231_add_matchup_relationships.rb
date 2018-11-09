class AddMatchupRelationships < ActiveRecord::Migration[5.1]
  def change
    add_reference :matchups, :season, index: true, foreign_key: true
    add_reference :matchups, :manager, index: true, foreign_key: true
  end
end
