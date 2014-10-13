class CreateProjectPiecesTagsJoinTable < ActiveRecord::Migration
  def change
  	create_table :project_pieces_tags, id: false do |t|
		t.integer :project_piece_id
		t.integer :tag_id
  	end
  end
end
