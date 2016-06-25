class AddScoreToDetail < ActiveRecord::Migration
  def change
    add_column :details, :score, :integer
  end
end
