class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  
  has_rich_text :biography
  has_one_attached :featured_image

  enum :role, {
    student: 0,
    teacher: 1,
    admin: 2,
    collaborator: 3
  }

  validates :name, presence: true
  validates :email_address, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "deve ser um email válido" }
  validates :password, presence: true, length: { minimum: 6 }, if: -> { new_record? || !password.nil? }


  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
