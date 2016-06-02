class CreateKitVerifiers < ActiveRecord::Migration[5.0]
  def change
    create_table :kit_verifiers do |t|
      t.references :kit, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :state
      t.text :comments

      t.timestamps
    end
  end
end
