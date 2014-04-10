class ReviewerResumesController < ResumesController

  def index
    @resumes = ReviewerResume.all
  end

  def show
    @resume = ReviewerResume.find(params[:id])
    authorize @resume
  end

  def new
    @resume = ReviewerResume.new
  end

  def create
    @resume = ReviewerResume.new(reviewer_resume_params)
    if @resume.save
      flash[:notice] = "Resume submitted."
      redirect_to root_path
    else
      flash[:error] = "There was an error. Please try again."
      render :new
    end
  end

  def destroy
    @resume = ReviewerResume.find(params[:id])
    @resume.destroy
    redirect_to resumes_path, notice:  "The resume #{@resume.name} has been deleted."
  end

  private

  def reviewer_resume_params
    params.require(:reviewer_resume).permit(:name, :email, :file, :submitter_id)
  end

end
