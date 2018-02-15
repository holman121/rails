class AddCompanyToProduct < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :company, foreign_key: true
  end
end
