class CreateAssessments < ActiveRecord::Migration[6.1]
  def change
    create_table :assessments do |t|
      t.string :description, null: false
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
