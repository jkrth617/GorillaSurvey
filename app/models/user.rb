class User < ActiveRecord::Base

  has_secure_password

  has_many :surveys
  has_many :responses

  validates :user_name, :email, :password_digest, presence: true
  validates :user_name, :email, uniqueness: true
  validate :email_format

  def email_format
  #checks to make sure its johnsmith123@example.com
    unless (self.email =~ /^\w+@\w+\.com$/) == 0
      errors.add(:email, "not proper email format do something like johnsmith123@example.com")
    end
  end

end
