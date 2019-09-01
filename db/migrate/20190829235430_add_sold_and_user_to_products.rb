class AddSoldAndUserToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :sold, :boolean
    add_reference :products, :user, foreign_key: true
  end
end
