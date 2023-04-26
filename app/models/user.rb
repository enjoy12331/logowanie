class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP}
  validates :name, presence: true
  validates :surname, presence: true
  validates :password_digest
  validate :valid_email?

  def valid_email?
    monkey = email.split("@")

    errors.add(:email, :invalid) unless monkey[1] == 'gmail.com' || monkey[1] == 'onet.pl'
  end
end
