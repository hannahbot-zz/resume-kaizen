class AddJobLinkToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :job_link, :string
  end
end
