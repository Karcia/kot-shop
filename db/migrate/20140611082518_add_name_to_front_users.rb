class AddNameToFrontUsers < ActiveRecord::Migration
  def change
    add_column :front_users, :name, :string
    add_column :front_users, :image, :string
  end
end
