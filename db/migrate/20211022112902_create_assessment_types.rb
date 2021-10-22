class CreateAssessmentTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :assessment_types do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
