class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :salon, null: false, foreign_key: true
      t.string :name
      t.integer :sex
      t.integer :age
      t.text :detail

      t.timestamps
    end
  end
end
