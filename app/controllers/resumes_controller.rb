class ResumesController < ApplicationController

  def index
    @resumes = Resume.all
    #Resume.visible_to(current_user)
  end

  def show
    @resume = Resume.find(params[:id])
    authorize @resume
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
