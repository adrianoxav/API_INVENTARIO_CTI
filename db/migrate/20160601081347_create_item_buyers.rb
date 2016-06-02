class CreateItemBuyers < ActiveRecord::Migration[5.0]
  def change
    create_table :item_buyers do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.string :value
      t.text :comments

      t.timestamps
    end
  end
end
