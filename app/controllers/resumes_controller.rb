class ResumesController < ApplicationController

  def index
    @resumes = Resume.includes(resumes_array)
  end

  def show
    @resume = Resume.find(params[:id])
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)
    if @resume.save
      flash[:notice] = "Resume submitted."
      redirect_to root_path
    else
      flash[:error] = "There was an error. Please try again."
      render :new
    end
  end

  # def create
  #   @submitter_resume = SubmitterResume.new(submitter_resume_params)
  #   @submitter_resume.submitter_id = current_user.id
  #   @submitter_resume.group_id = current_user.id += 1
  #   if @submitter_resume.save
  #     flash[:notice] = "Resume submitted."
  #     redirect_to submitter_resumes_path
  #   else
  #     flash[:error] = "There was an error. Please try again."
  #     render :new
  #   end
  # end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to resumes_path, notice:  "The resume #{@resume.name} has been deleted."
  end

  private

  def resume_params
    params.require(:resume).permit(:name, :email, :file)
  end

  def resumes_array
    group_id_collection = current_user.resumes.select(:group_id)
    #One line to collect all of the ids
    resumes = {}
    #A second line to iterate through the ids and create the arrays
    group_id_collection.each do |group_id|
      resumes[group_id] = Resume.where(group_id: group_id)
    end
  end

end
