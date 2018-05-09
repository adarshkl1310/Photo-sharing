class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :home, dependent: :destroy

  validates_presence_of :username, presence:{:message => "Name can't be blank"}
  validates_presence_of :city,presence:{:message => "City Name can't be blank"}
  validates_presence_of :gender, presence:{:message => "Gender type can't be blank"}
   
end
