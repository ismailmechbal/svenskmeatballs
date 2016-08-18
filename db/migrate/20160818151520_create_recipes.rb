class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.string :cook_time
      t.string :prep_time
      t.text :ingredient
      t.text :instruction

      t.timestamps
    end
  end
end
