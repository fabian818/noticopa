class AddNameToTournament < ActiveRecord::Migration
  def change
    add_column :tournaments, :name, :string
  end
end
