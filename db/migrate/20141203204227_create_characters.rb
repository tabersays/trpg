class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.references :user, index: true
      t.integer :hp
      t.integer :mp
      t.integer :ep
      t.integer :str
      t.integer :dex
      t.integer :spd
      t.integer :con
      t.integer :end
      t.integer :min
      t.integer :sol
      t.integer :lv
      t.integer :exp

      t.timestamps
    end
  end
end
