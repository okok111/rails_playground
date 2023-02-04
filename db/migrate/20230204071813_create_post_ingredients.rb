class CreatePostIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :post_ingredients do |t|
      t.references :post, null: false, foreign_key: true
      t.string :ingredient
      t.string :quantity

      t.timestamps
    end
  end
end
