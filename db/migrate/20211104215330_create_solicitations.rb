class CreateSolicitations < ActiveRecord::Migration[6.1]
  def change
    create_table :solicitations do |t|
      t.text :description
      t.references :pccsd_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
