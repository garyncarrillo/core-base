class CreateSpecialists < ActiveRecord::Migration[6.1]
  def change
    create_table :specialists do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :address
      t.string :speciality

      t.timestamps
    end
  end
end
