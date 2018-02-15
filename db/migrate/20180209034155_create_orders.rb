class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.integer :quantity


      t.timestamps
    end
  end
end
