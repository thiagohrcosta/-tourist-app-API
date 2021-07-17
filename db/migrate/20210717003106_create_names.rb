class CreateNames < ActiveRecord::Migration[6.1]
  def change
    create_table :names do |t|
      t.string :logo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
