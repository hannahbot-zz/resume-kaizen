class ReviewerResume < Resume

  private

  def send_reviewer_resume_emails
      ResumeMailer.reviewer_resume(self).deliver
  end

end
