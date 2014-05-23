class Resume < ActiveRecord::Base
  belongs_to :user
  mount_uploader :file, FileUploader

  after_save do
  	if group_id.blank?
  		update_attribute(:group_id, id)
  	end
  end

  default_scope order('updated_at ASC')

	scope :archived, where(:archived => true)
	scope :sorted, order(:date => :desc)
end
