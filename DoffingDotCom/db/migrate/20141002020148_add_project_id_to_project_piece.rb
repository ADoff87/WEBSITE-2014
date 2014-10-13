class AddProjectIdToProjectPiece < ActiveRecord::Migration
  def change
    add_column :project_pieces, :project_id, :integer
  end
end
