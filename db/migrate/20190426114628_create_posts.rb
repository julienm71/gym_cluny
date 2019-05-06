class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.datetime :date
      t.string :titre
      t.string :description
      t.string :image
      t.string :titre_secondaire

      t.timestamps
    end
  end
end
