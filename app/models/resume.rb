class Resume < ActiveRecord::Base
  belongs_to :user

  mount_uploader :file, FileUploader

  has_many :messages, dependent: :destroy

  after_create :send_resume_emails

  private

  def send_resume_emails
    self.resume.each do |resume|
      FavoriteMailer.new_resume(resume.user, self.resume, self).deliver
    end
  end

end
