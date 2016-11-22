class CreateStartups < ActiveRecord::Migration[5.0]
  def change
    create_table :startups do |t|
      t.string :name,               default: "",            null: false, unique: true
      t.string :short_desc,         default: "",            null: false
      t.text :long_desc,            default: ""
      t.string :website_url,        default: ""
      t.string :video_url,          default: ""
      t.string :note_founded,       default: ""
      t.string :note_team_size,     default: ""
      t.string :note_stage,         default: ""
      t.string :note_traction,      default: ""
      t.boolean :is_active,         default: false
      t.references :user,           foreign_key: true, index: true

      t.timestamps
    end
  end
end