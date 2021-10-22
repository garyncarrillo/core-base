class CreateAssessmentsUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :assessments_users do |t|
      t.references :assessment, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :answer

      t.timestamps
    end
  end
end
