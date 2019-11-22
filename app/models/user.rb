class User < ApplicationRecord
  # Direct associations

  has_many   :flights,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :phone_number, :uniqueness => { :message => "Phone number is already associated with another account" }

  validates :phone_number, :presence => true

  validates :phone_number, :length => { :minimum => 7, :maximum => 13 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
