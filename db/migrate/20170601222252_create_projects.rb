class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.integer :client_id, null: false
      t.string :name, null: false
      t.string :contact
      t.string :contact_number

      t.timestamps
    end
  end
end
