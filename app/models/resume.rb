class Resume < ActiveRecord::Base
  belongs_to :user
  mount_uploader :file, FileUploaderr
end
