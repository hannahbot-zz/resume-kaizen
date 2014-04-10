class SubmitterResumesController < ResumesController

  def index
    @submitter_resumes = SubmitterResume.all
  end

  def show
    @submitter_resume = SubmitterResume.find(params[:id])
    authorize @submitter_resume
  end

  def new
    @submitter_resume = SubmitterResume.new
  end

  def create
    @submitter_resume = SubmitterResume.new(submitter_resume_params)
    if @submitter_resume.save
      flash[:notice] = "Resume submitted."
      redirect_to root_path
    else
      flash[:error] = "There was an error. Please try again."
      render :new
    end
  end

  def destroy
    @submitter_resume = SubmitterResume.find(params[:id])
    @submitter_resume.destroy
    redirect_to resumes_path, notice:  "The resume #{@submitter_resume.name} has been deleted."
  end

  private

  def submitter_resume_params
    params.require(:submitter_resume).permit(:name, :email, :file, :reviewer_id)
  end
end
