class User < ApplicationRecord
	has_many :user_workouts
	has_many :workouts, through: :user_workouts

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
