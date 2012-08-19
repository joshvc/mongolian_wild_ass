class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
    :name, :bio, :goal, :title, :fivek_goal_mm, :fivek_goal_ss
  # attr_accessible :title, :body

  has_many :results
  has_many :events, through: :results
end
