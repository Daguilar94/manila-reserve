class AddFieldsToBirds < ActiveRecord::Migration[5.2]
  def change
    add_column :birds, :status, :integer
    add_column :birds, :size, :integer
    add_column :birds, :description, :text
  end
end
