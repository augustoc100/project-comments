class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.text :text, null: false

      t.references :created_by, null: false, foreign_key: { to_table: :users }
      t.references :project, null: false
      t.timestamps
    end
  end
end
