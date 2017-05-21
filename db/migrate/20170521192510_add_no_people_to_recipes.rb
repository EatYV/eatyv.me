class AddNoPeopleToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :no_people, :integer
  end
end
