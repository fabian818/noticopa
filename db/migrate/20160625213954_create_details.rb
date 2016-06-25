class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.references :team, index: true, foreign_key: true
      t.references :type, index: true, foreign_key: true
      t.references :match, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
