class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.integer :company_id
      t.integer :client_id
      t.string :name
      t.string :contact
      t.string :contact_number

      t.timestamps
    end
  end
end
