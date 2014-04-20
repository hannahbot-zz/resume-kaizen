class Resume < ActiveRecord::Base
  belongs_to :user
  mount_uploader :file, FileUploader

  # has_many :messages, dependent: :destroy
  #
  # after_create :send_resume_emails

end
