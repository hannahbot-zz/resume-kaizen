class AddPriceToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :price, :integer
  end
end
