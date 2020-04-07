class User < ActiveRecord::Base
  has_secure_password

  def authenticate_with_credentials(email, password) do
    
    user = User.find_by_email(params[:email])
    
    if user && user.authenticate(params[:password])
      user
    else
      nil
    end
  end

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
end
