class ResumesController < ApplicationController

  def show
    @resume = Resume.find(params[:id])
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new.(resume_params)
    if @resume.save
      flash[:notice] = "Resume submitted."
      redirect_to root_path
    else
      flash[:error] = "There was an error. Please try again."
      render :new
    end
  end
  private

  def resume_params
    params.require(:resume).permit(:name, :email, :file)
  end
end
