class CreateGoats < ActiveRecord::Migration[6.0]
  def change
    create_table :goats do |t|
      t.string :name
      t.float :price
      t.integer :age
      t.string :race
      t.string :appetite
      t.string :bonus
      t.text :description
      t.string :picture
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
