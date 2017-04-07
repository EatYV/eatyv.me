class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :grade
      t.references :user, foreign_key: true
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
