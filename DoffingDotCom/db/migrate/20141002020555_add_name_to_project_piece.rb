class AddNameToProjectPiece < ActiveRecord::Migration
  def change
    add_column :project_pieces, :name, :string
  end
end
