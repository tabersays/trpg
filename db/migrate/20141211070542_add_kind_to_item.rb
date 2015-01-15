class AddKindToItem < ActiveRecord::Migration
  def change
    add_column :items, :kind, :string
  end
end
