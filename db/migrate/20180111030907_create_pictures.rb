class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :url
      t.string :location
      t.string :caption
      t.integer :user_id
      t.text :body
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
