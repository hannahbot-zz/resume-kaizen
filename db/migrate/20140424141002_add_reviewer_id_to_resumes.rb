class AddReviewerIdToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :reviewer_id, :integer
  end
end
