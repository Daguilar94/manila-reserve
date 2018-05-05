class AddDescriptionToCoworker < ActiveRecord::Migration[5.2]
  def change
    add_column :coworkers, :description, :text
  end
end
