class Project < ActiveRecord::Base
	has_many :project_pieces
	has_and_belongs_to_many :tags, join_table: "projects_tags"

	validates :title, presence: true
	validates :user_agreement, acceptance:  true
end
