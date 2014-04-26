class ResumesController < ApplicationController

  def index
    @resumes = resumes_array
  end

  def show
    @resume = Resume.find(params[:id])
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)
    @resume.user_id = current_user.id
    @resume.email = current_user.email    
    @resume.group_id = @resume.id
      
    if @resume.save
      flash[:notice] = "Resume submitted."
      redirect_to resumes_path
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
    params.require(:resume).permit(:name, :email, :file, :reviewer_id, :user_id)
  end

  def resumes_array
  group_id_collection = current_user.resumes
    #One line to collect all of the ids
    resumes = {}
    #A second line to iterate through the ids and create the arrays
    # binding.pry
    group_id_collection.each do |group_id|
      resumes[group_id] = Resume.where(group_id: group_id)
    end

    return resumes
  end

end


#pass in group_id through hidden parameter in a form so reviewer has group_id 