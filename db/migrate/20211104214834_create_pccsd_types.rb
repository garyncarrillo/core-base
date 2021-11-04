class CreatePccsdTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :pccsd_types do |t|
      t.string :name
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end


#petitions, complaints, claims, suggestions and denunciation
