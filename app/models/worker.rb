class Worker < ApplicationRecord
  belongs_to :company
  belongs_to :job
  belongs_to :worker_status
  # has_one :worker_status
  
  def fullname
    "#{self.first_name} #{self.second_name} #{self.first_lastname} #{self.second_lastname}"
  end
end
