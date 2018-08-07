class AddInfoToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :info, :string
  end
end
