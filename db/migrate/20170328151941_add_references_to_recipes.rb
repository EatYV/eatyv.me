class AddReferencesToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_reference :recipes, :user, foreign_key: true
  end
end
