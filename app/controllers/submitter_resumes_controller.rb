class SubmitterResumesController < ResumesController

  def index
    @resumes = SubmitterResume.all
  end

  def show
    @resume = SubmitterResume.find(params[:id])
    authorize @resume
  end

  def new
    @resume = SubmitterResume.new
  end

  def create
    @resume = SubmitterResume.new(submitter_resume_params)
    if @resume.save
      flash[:notice] = "Resume submitted."
      redirect_to root_path
    else
      flash[:error] = "There was an error. Please try again."
      render :new
    end
  end

  def destroy
    @resume = SubmitterResume.find(params[:id])
    @resume.destroy
    redirect_to resumes_path, notice:  "The resume #{@resume.name} has been deleted."
  end

  private

  def submitter_resume_params
    params.require(:submitter_resume).permit(:name, :email, :file, :reviewer_id)
  end
end
