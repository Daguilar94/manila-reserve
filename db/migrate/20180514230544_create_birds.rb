class CreateBirds < ActiveRecord::Migration[5.2]
  def change
    create_table :birds do |t|
      t.string :popular_name
      t.string :cientific_name

      t.timestamps
    end
  end
end
