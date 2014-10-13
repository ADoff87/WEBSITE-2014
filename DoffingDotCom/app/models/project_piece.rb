class ProjectPiece < ActiveRecord::Base
	belongs_to :project
	has_and_belongs_to_many :tags, join_table: "project_pieces_tags"
end
