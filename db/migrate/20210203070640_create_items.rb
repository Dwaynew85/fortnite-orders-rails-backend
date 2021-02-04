class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :pic_url
      t.integer :price

      t.timestamps
    end
  end
end
