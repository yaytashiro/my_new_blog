class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name ,null: false
      t.string :email,null: false
      t.string :description
      t.string :image_url

      t.timestamps null: false
    end
  end
end
