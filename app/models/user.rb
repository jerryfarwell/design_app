class User < ApplicationRecord

  has_one_attached :avatar
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable


after_create :welcome_send

def welcome_send
  UserMailer.user_created(self).deliver_now
end
end
