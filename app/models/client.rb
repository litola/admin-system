class Client < ApplicationRecord
  validates :name, presence: true
  validates :company_id, presence: true
  validates :contact, presence: true
  validates :contact_number, presence: true

  belongs_to :company
  has_many :projects
end
