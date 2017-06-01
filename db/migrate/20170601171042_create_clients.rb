class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.string :phone
      t.string :rfc
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :zipcode
      t.string :country
      t.string :contact, null: false
      t.string :contact_number, null: false
      t.integer :company_id, null: false

      t.timestamps
    end
  end
end
