class CreateSeminars < ActiveRecord::Migration[7.1]
  def change
    create_table :seminars do |t|
      t.integer :owner_id
      t.string :name, null: false
      t.string :place, null: false
      t.datetime :start_at, null: false
      t.datetime :end_at, null: false
      t.text :content, null: false

      t.timestamps
    end
    add_index :seminars, :owner_id
  end
end
