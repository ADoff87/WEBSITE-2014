class Tag < ActiveRecord::Base
 has_and_belongs_to_many :projects, join_table: "projects_tags"
 has_and_belongs_to_many :project_pieces, join_table: "project_pieces_tags"
end
