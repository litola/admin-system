class Company < ApplicationRecord
  validates :name, null: false
  validates :contact, null: false
  validates :contact_number, null: false

  has_many :clients
  has_many :projects, through: :clients 
end
