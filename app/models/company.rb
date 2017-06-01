class Company < ApplicationRecord
  validates :name, presence: true
  validates :contact, presence: true
  validates :contact_number, presence: true

  has_many :clients
  has_many :projects, through: :clients 
end
