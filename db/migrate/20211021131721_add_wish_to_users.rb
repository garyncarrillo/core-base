class AddWishToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :wish, index: true 
  end
end
