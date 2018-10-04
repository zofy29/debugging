class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable

  ADMIN_ROLE = 'admin'
  GUEST_ROLE = 'guest'

  def admin?
    role == ADMIN_ROLE
  end

  def guest?
    role == GUEST_ROLE
  end
end
