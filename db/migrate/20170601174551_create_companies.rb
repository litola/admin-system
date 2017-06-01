class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :rfc
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :zipcode
      t.string :country
      t.string :phone
      t.string :contact, null: false
      t.string :contact_number, null: false

      t.timestamps
    end
  end
end
