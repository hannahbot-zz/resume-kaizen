class SubmitterResumesController < ResumesController

  def index
    @submitter_resumes = SubmitterResume.all
  end

  def show
    @submitter_resume = Resume.find(params[:id])

    #One line to collect all of the ids
    resumes = {}
    #A second line to iterate through the ids and create the arrays
    group_id_collection.each do |group_id|
      resumes[group_id] = Resume.where(group_id: group_id)
    end

  binding.pry

  end

  def new
    @submitter_resume = SubmitterResume.new
  end

  def create
    @submitter_resume = SubmitterResume.new(submitter_resume_params)
    @submitter_resume.submitter_id = current_user.id
    @submitter_resume.group_id = current_user.id += 1
    if @submitter_resume.save
      flash[:notice] = "Resume submitted."
      redirect_to submitter_resumes_path
    else
      flash[:error] = "There was an error. Please try again."
      render :new
    end
  end

  def destroy
    @submitter_resume = SubmitterResume.find(params[:id])
    @submitter_resume.destroy
    redirect_to submitter_resumes_path, notice:  "The resume #{@submitter_resume.name} has been deleted."
  end

  private

  def submitter_resume_params
    params.require(:submitter_resume).permit(:name, :email, :file, :reviewer_id)
  end
end
