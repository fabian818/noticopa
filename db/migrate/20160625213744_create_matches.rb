class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :date
      t.time :hour

      t.timestamps null: false
    end
  end
end
