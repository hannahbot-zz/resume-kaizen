class AddGroupIdToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :group_id, :integer
  end
end
