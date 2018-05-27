class ChangeAgeFromUser < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.remove :age
      t.datetime :birthDay
    end
  end
end
