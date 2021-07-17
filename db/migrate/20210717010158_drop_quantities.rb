class DropQuantities < ActiveRecord::Migration[6.1]
  def change
    drop_table :quantities
  end
end
