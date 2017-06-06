class CreateWorkerStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :worker_statuses do |t|
      t.integer :company_id
      t.string :name

      t.timestamps
    end
  end
end
