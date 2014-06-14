class CreateFrontUsers < ActiveRecord::Migration
  def change
    create_table :front_users do |t|

      t.timestamps
    end
  end
end
