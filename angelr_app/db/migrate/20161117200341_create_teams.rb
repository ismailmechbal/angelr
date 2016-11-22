class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :role
      t.string :facebook_url
      t.string :twitter_url
      t.string :linkedin_url
      t.references :startup, foreign_key: true, index: true

      t.timestamps
    end
  end
end
