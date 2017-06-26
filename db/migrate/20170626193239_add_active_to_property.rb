class AddActiveToProperty < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :active, :boolean
  end
end
