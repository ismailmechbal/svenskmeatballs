class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :description
      t.string :cook_time, null: false
      t.string :prep_time, null: false
      t.text :ingredient, null: false
      t.text :instruction, null: false
      t.text :image_url, null: false

      t.timestamps
    end
  end
end
