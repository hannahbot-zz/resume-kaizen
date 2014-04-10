class ReviewerResumesController < ResumesController

  def index
    @reviewer_resumes = ReviewerResume.all
  end

  def show
    @reviewer_resume = ReviewerResume.find(params[:id])
    authorize @reviewer_resume
  end

  def new
    @reviewer_resume = ReviewerResume.new
  end

  def create
    @reviewer_resume = ReviewerResume.new(reviewer_resume_params)
    if @reviewer_resume.save
      flash[:notice] = "Resume submitted."
      redirect_to root_path
    else
      flash[:error] = "There was an error. Please try again."
      render :new
    end
  end

  def destroy
    @reviewer_resume = ReviewerResume.find(params[:id])
    @reviewer_resume.destroy
    redirect_to resumes_path, notice:  "The resume #{@reviewer_resume.name} has been deleted."
  end

  private

  def reviewer_resume_params
    params.require(:reviewer_resume).permit(:name, :email, :file, :submitter_id)
  end

end
