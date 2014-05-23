class UsersController < ApplicationController

before_filter :authenticate_user!

private
def user_params
  params.require(:user).permit(:name, :email, :file, :email_resumes)
end

end
