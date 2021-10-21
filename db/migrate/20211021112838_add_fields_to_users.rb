class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :job_title, :string
    add_column :users, :age, :string
    add_column :users, :phone_number, :string
    add_column :users, :sex, :integer, default: 0
  end
end
