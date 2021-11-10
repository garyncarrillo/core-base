class CreateUsersTreatments < ActiveRecord::Migration[6.1]
  def change
    create_table :users_treatments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :assessment_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
