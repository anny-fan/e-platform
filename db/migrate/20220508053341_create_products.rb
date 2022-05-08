class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title #,length: 100  #--> varchar(100)
      t.integer :price
      t.text :description
      t.integer :sku

      t.timestamps
    end
  end
end
