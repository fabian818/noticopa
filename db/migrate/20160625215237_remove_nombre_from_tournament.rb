class RemoveNombreFromTournament < ActiveRecord::Migration
  def change
    remove_column :tournaments, :nombre, :string
  end
end
