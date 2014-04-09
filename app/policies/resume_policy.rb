class ResumePolicy < ApplicationPolicy
  attr_reader :user, :resume

  def initialize(user, resume)
    @user = user
    @resume = resume
  end

  def show?
    #What is the logic for who gets to see #show?  Return true or false.
    true
  end


end
