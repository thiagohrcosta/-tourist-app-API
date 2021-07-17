class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :photo
      t.decimal :price
      t.decimal :cashback
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
