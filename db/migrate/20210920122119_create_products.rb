class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
