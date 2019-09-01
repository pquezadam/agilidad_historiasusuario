class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :sold, :boolean, :default :false
    add_references :products, :user, foreign_key: true
  end
end
