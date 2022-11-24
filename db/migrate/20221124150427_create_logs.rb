class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs_comments do |t|
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
