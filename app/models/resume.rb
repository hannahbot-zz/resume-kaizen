class Resume < ActiveRecord::Base
  belongs_to :submitter, class_name: "User", foreign_key: "submitter_id"
  belongs_to :reviewer, class_name: "User", foreign_key: "reviewer_id"
  mount_uploader :file, FileUploader

  # has_many :messages, dependent: :destroy
  #
  # after_create :send_resume_emails

end
