class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.references :post, null: false, foreign_key: true
      t.string :picture, limit: 300

      t.timestamps
    end
  end
end
