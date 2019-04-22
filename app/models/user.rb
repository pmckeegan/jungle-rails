class User < ActiveRecord::Base
  
  has_secure_password


  validates :first_name, length: { minimum: 1 }
  validates :last_name, length: { minimum: 1 }
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, length:  { minimum: 3 }
  # validates :password_confirmation, presence: true


  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email)
    binding.pry
    if user && user.authenticate(password)
      user
    else 
      nil
    end
  end

end

