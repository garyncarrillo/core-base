class AddIsSubscribedNewsletterToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :is_subscribed_newsletter, :boolean, default: false
  end
end
