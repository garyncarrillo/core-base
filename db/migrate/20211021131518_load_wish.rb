class LoadWish < ActiveRecord::Migration[6.1]
  def change
    Wish.create(name: 'Reducir la ansiedad')
    Wish.create(name: 'Manejar el estrés')
    Wish.create(name: 'Dormir mejor, concentrarse')
    Wish.create(name: 'Incrementar nivel de energía')
    Wish.create(name: 'Promover la creatividad')
    Wish.create(name: 'Manejar rabietas de mi hijx')
    Wish.create(name: 'Prepararme para una reunión')
  end
end
