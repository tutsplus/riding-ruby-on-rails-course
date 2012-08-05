class AddProjectIdToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :project_id, :integer, default: 1
  end
end
