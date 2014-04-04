class AddEmailToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :email, :string
  end
end
