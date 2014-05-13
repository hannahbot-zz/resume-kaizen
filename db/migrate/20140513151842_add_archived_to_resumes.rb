class AddArchivedToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :archived, :boolean, default: false
  end
end
