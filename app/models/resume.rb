class Resume < ActiveRecord::Base
  belongs_to :user

  mount_uploader :file, FileUploader

  has_many :messages, dependent: :destroy

  def download_url
    s3 = AWS::S3.new
    bucket = s3.buckets['resume-kaizen-development']
    object = bucket.objects['key']
    object.url_for(:get, {
      response_content_disposition: 'attachment;'
    }).to_s
  end

  after_create :send_resume_emails

  private

  def send_resume_emails
    self.resume.each do |resume|
      FavoriteMailer.new_resume(resume.user, self.resume, self).deliver
    end
  end

end
