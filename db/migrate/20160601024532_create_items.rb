class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :code
      t.string :item_type
      t.string :state
      t.string :reference
      t.string :domain
      t.string :characteristics

      t.timestamps
    end
  end
end
