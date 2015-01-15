class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.integer :att
      t.integer :def
      t.integer :worth
      t.references :character, index: true

      t.timestamps
    end
  end
end
