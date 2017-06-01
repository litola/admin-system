class Project < ApplicationRecord
  validates :name, presence: true
  validates :client_id, presence: true

  belongs_to :client
end
