class AddProjectPieceProperties < ActiveRecord::Migration
  def change
  	add_column :project_pieces, :image_url, :string
  	add_column :project_pieces, :featured, :boolean
  	add_column :project_pieces, :sort_order, :integer
  end
end
