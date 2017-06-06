class CreateWorkShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :work_shifts do |t|
      t.integer :company_id
      t.string :name

      t.timestamps
    end
  end
end
