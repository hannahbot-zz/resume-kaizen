class ResumesController < ApplicationController

  def index
    @resumes = Resume.all
  end

  def show
    @resume = Resume.find(params[:id])
    group_id_collection = current_user.resumes.select(:group_id)
    #One line to collect all of the ids
    resumes = {}
    #A second line to iterate through the ids and create the arrays
    group_id_collection.each do |group_id|
      resumes[group_id] = Resume.where(group_id: group_id)
    end
  binding.pry
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

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to resumes_path, notice:  "The resume #{@resume.name} has been deleted."
  end

  private

  def resume_params
    params.require(:resume).permit(:name, :email, :file)
  end
end
