class Cast < ActiveRecord::Migration[7.0]
  def change
    create_table :casts do |t|
    t.references :movie, null: false, foreign_key: true
    t.references :author, null: false, foreign_key: true

    t.timestamps
  end
end
end
