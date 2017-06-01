class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :rfc
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :zipcode
      t.string :country
      t.string :phone
      t.string :contact
      t.string :contact_number

      t.timestamps
    end
  end
end
