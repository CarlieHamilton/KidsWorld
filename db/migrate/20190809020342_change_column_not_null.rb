class ChangeColumnNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :users, :username, false
    change_column_null :purchases, :buyer_id, false
    change_column_null :purchases, :item_id, false
    change_column_null :items, :title, false
    change_column_null :items, :price, false
    change_column_null :items, :seller_id, false
  end
end
