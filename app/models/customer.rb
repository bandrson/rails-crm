class Customer < ApplicationRecord
  has_one_attached :image
  validates :full_name, presence: true, length: { minimum: 2 }
  validates :phone_number, presence: true
  validates :email_address, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :notes, presence: true, allow_blank: true, length: { maximum: 10000 }

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email_address", "full_name", "id", "id_value", "notes", "phone_number", "updated_at"]
  end
end
