class CreateKitApprovers < ActiveRecord::Migration[5.0]
  def change
    create_table :kit_approvers do |t|
      t.references :kit, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :approved

      t.timestamps
    end
  end
end
