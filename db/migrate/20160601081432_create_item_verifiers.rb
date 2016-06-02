class CreateItemVerifiers < ActiveRecord::Migration[5.0]
  def change
    create_table :item_verifiers do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.boolean :state
      t.text :comments

      t.timestamps
    end
  end
end
