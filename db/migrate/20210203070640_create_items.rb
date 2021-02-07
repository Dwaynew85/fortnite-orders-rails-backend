class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :order_id
      t.string :name
      t.integer :cost
      t.text :icon

      t.timestamps
    end
  end
end
