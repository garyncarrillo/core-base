class SeedsPccsd < ActiveRecord::Migration[6.1]
  def change
    PccsdType.create(name: 'petitions')
    PccsdType.create(name: 'complaints')
    PccsdType.create(name: 'claims')
    PccsdType.create(name: 'suggestions')
    PccsdType.create(name: 'denunciation')
  end
end
