class CreateSalons < ActiveRecord::Migration[6.1]
  def change
    create_table :salons do |t|
      t.string :name
      t.string :founder
      t.string :money
      t.text :detail

      t.timestamps
    end
  end
end
