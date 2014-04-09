class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :resumes
  has_many :messages, dependent: :destroy


  def submitter?
    role == "submitter"
  end

  def reviewer?
    role == "reviewer"
  end
  
end
