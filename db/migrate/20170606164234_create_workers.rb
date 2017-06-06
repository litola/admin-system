class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.integer :company_id
      t.integer :job_id
      t.integer :worker_status_id
      t.integer :worker_number
      t.string :first_name
      t.string :second_name
      t.string :first_lastname
      t.string :second_lastname
      t.date :dob
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :zip
      t.string :code
      t.string :country
      t.string :curp
      t.string :phone
      t.string :cellphone
      t.string :marital_status
      t.boolean :cartilla_militar
      t.string :matricula_cartilla
      t.date :vigencia_cartilla
      t.boolean :porte_arma
      t.string :numero_porte_arma
      t.boolean :licencia_conducir
      t.string :matricula_licencia_conducir
      t.string :seguro_social
      t.string :dad_name
      t.string :mother_name
      t.string :spouse_name
      t.string :spouse_phone
      t.date :day_of_entry
      t.string :daily_income
      t.string :extra_hour

      t.timestamps
    end
  end
end
