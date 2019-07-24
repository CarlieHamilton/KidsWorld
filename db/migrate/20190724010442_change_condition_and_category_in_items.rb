class ChangeConditionAndCategoryInItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :condition, 'integer USING CAST(condition AS integer)'
    change_column :items, :category, 'integer USING CAST(category AS integer)'
end
end
