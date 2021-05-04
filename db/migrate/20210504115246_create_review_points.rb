class CreateReviewPoints < ActiveRecord::Migration[6.1]
  def change
    create_table :review_points do |t|
      t.references :review, null: false, foreign_key: true
      t.references :point, null: false, foreign_key: true
      t.integer :vote

      t.timestamps
    end
  end
end
