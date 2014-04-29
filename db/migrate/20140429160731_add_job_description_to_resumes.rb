class AddJobDescriptionToResumes < ActiveRecord::Migration
  def change
  	add_column :resumes, :job_description, :string
  end
end
