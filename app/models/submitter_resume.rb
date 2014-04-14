class SubmitterResume < Resume

  private
  
  def send_submitter_resume_emails
      ResumeMailer.submitter_resume(self).deliver
  end

end
