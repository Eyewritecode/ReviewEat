class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 	has_many :reviews, dependent: :destroy #if a user is deleted all their reviews are gone too
 	validates :first_name, :last_name, presence: true
end
