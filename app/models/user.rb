class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User
  before_create :skip_confirmation
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
