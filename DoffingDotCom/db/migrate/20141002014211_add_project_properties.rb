class AddProjectProperties < ActiveRecord::Migration
  def change
  	add_column :projects, :title, :string
  	add_column :projects, :sort_order, :string
  	add_column :projects, :description, :text
  end
end
