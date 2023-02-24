class CreateDesigns < ActiveRecord::Migration[7.0]
  def change
    create_table :designs do |t|
      t.string :title
      t.string :price
      t.text :description
      t.date :created_year

      t.timestamps
    end
  end
end
