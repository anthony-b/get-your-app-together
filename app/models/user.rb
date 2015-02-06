class User < ActiveRecord::Base
  belongs_to :devise
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :profile_name, :email, :password, :password_confirmation, :remember_me, :is_admin, :is_sales, :is_finance, :is_support, :is_development, :job_title, :hourly_rate
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :profile_name, presence: true,
							uniqueness: true
		
  def full_name
	first_name + " " + last_name
  end
end
