class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :nombre
      t.date :init_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
