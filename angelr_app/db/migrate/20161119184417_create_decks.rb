class CreateDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.references :startup, foreign_key: true, index: true

      t.timestamps
    end
  end
end
