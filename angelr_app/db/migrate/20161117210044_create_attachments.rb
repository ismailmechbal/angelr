class CreateAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :attachments do |t|
      t.references :attachable, polymorphic: true, index: true
      t.timestamps
    end
    add_index :attachments, :attachable_id
  end
end
