class Resume < ActiveRecord::Base
  belongs_to :user
  mount_uploader :file, FileUploader

  after_save do
  	if group_id.blank?
  		update_attribute(:group_id, id)
  	end
  end

  default_scope order('updated_at ASC')

  # has_many :messages, dependent: :destroy
  #
  # after_create :send_resume_emails

end
