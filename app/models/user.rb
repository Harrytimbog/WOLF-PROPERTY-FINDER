class User < ApplicationRecord
  has_many :properties
  has_one_attached :avatar
  has_one_attached :cover_image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :company, :avatar, :telephone, :details, :cover_image, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
