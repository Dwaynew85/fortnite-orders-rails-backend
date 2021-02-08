class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.integer :total
      t.integer :item_id

      t.timestamps
    end
  end
end
