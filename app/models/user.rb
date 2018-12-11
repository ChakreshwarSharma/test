class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:user, :admin]
  validates :role, presence: true, inclusion: { in: roles.keys }
  belongs_to :secret_code, optional: true
  
  def user_name
    "#{first_name.to_s} #{last_name.to_s}"
  end
end
