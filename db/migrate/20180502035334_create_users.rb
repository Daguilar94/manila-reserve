class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastName
      t.string :personalId
      t.integer :age
      t.integer :type
      t.integer :role
      t.text :comment

      t.timestamps
    end
  end
end
