class User < ActiveRecord::Base

  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :password_confirmation, presence: true 
  validates :password, presence: true, length: { minimum: 6 }

   def authenticate_with_credentials(email, password)
    @user = User.find_by_email(email)
    if @user.authenticate(password)
      @user
    else
      nil
    end
  end
end