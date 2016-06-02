class CreateKitBuyers < ActiveRecord::Migration[5.0]
  def change
    create_table :kit_buyers do |t|
      t.references :kit, foreign_key: true
      t.references :user, foreign_key: true
      t.string :value
      t.text :comment

      t.timestamps
    end
  end
end
