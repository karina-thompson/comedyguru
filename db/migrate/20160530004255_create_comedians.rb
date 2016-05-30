class CreateComedians < ActiveRecord::Migration
  def change
    create_table :comedians do |t|
      t.string :name
      t.string :country
      t.string :image

      t.timestamps null: false
    end
  end
end
