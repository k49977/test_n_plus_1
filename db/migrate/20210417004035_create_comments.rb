class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.references :post, null: false, foreign_key: true
      t.integer :positive_count
      t.integer :negative_count

      t.timestamps
    end
  end
end
