class AdduserIdToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :user, foreign_key: true
    add_column :products, :first_category_id, :integer
    add_column :products, :second_category_id, :integer
    add_column :products, :third_category_id, :integer
  end
end
