class User < ActiveRecord::Base
  has_many :results
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #Devise Security Extension
  # devise :password_expirable, :secure_validatable, :password_archivable, :session_limitable, :expirable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :timeoutable, :password_archivable

  attr_accessor :login

  validates :username, :uniqueness => {
  	:case_sensitive => false
  }


#  def self.find_first_by_auth_conditions(warden_conditions)
#    conditions = warden_conditions.dup
#    if login = conditions.delete(:login)
#      where(conditions).where(["username = :value || email = :value", { :value => login.downcase }]).first
#    else
#      where(conditions).first
#    end
#  end
  def self.find_for_database_authentication(warden_conditions)
   if conditions = warden_conditions.dup
      login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.strip.downcase }]).first
   else        
    where(conditions).first
    end
 end
end
