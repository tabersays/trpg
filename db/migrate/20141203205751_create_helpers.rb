class CreateHelpers < ActiveRecord::Migration
  def change
    create_table :helpers do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
