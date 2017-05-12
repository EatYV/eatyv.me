class AddFieldsToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :date, :string
    add_column :recipes, :time, :decimal
    add_column :recipes, :location, :string
  end
end
