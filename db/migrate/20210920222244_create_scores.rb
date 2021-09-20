class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.references :post, null: false, foreign_key: true
      t.integer :score
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
