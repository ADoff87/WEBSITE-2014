class CreateProjectPieces < ActiveRecord::Migration
  def change
    create_table :project_pieces do |t|

      t.timestamps
    end
  end
end
