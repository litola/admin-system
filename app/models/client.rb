class Client < ApplicationRecord
  validates :name, null: false
  validates :company_id, null: false
  validates :contact, null: false
  validates :contact_number, null: false

  belongs_to :company
  has_many :projects
end
