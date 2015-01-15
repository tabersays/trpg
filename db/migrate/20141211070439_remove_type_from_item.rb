class RemoveTypeFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :type, :string
  end
end
