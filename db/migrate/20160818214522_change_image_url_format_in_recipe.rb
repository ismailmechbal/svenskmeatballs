class ChangeImageUrlFormatInRecipe < ActiveRecord::Migration[5.0]
  def up
    change_column :recipes, :image_url, :string
  end

  def down
    change_column :recipes, :image_url, :text
  end
end
