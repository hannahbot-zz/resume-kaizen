class Resume < ActiveRecord::Base
  belongs_to :user

  mount_uploader :file, FileUploader

  has_many :messages, dependent: :destroy
end
