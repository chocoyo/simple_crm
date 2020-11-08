class Customer < ApplicationRecord
  validates :full_name, :email_address, presence: true
  has_one_attached :image
end
