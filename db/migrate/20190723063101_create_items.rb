class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :seller, foreign_key: {to_table: :users}
      t.string :title, limit: 100
      t.string :description, limit: 250
      t.string :condition, limit: 50
      t.string :category, limit: 50
      t.boolean :sold, default: false

      t.timestamps
    end
  end
end
