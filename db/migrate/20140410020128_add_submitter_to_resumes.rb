class AddSubmitterToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :submitter_id, :integer
  end
end
